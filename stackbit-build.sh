#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://develop.widget.stackbit.com/init.js 6022c6e53e30340016a02c60

echo "stackbit-build.sh: finished build"
