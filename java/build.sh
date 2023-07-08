#!/usr/bin/bash

set -e
declare -a VERSIONS=("8" "11" "16" "17" "18" "19" "20")

BASE_NAME="$(basename $PWD)"
for ((i = 0; i < ${#VERSIONS[@]}; i++)); do
    TAG="$TAG_BASE:$BASE_NAME${VERSIONS[i]}"
    DIR="$PWD/${VERSIONS[i]}"

    echo "Building $BASE_NAME v${VERSIONS[i]} (tag: $TAG)..."
    docker build --tag "$TAG" --file "$DIR/Dockerfile" "$PWD"

    if [ ! -z "$PUBLISH_IMAGES" ]; then
        echo "Pushing $BASE_NAME v${VERSIONS[i]} (tag: $TAG)..."
        docker push "$TAG"
    fi
done