#!/usr/bin/bash

set -e

export TAG_BASE="booky10/yolks"
export REPO_ROOT_DIR="$PWD/$(dirname $0)"

cd "$REPO_ROOT_DIR/java"
./build.sh

cd "$REPO_ROOT_DIR/nodejs"
./build.sh

cd "$REPO_ROOT_DIR/python"
./build.sh
