#!/usr/bin/bash

set -e
declare -a VERSIONS=("3.8" "3.9" "3.10" "3.11")

BASE_NAME="$(basename $PWD)"
for ((i = 0; i < ${#VERSIONS[@]}; i++)); do
    docker pull "python:${VERSIONS[i]}-alpine"

    TAG="$TAG_BASE:$BASE_NAME${VERSIONS[i]}"
    DIR="$PWD/${VERSIONS[i]}"
    DOCKERFILE="$DIR/Dockerfile"

    IMAGE=$(cat "$DOCKERFILE" | grep "FROM" | awk ' { print $3 } ')
    echo "Checking for updates on image $IMAGE..."
    docker pull "$IMAGE"

    echo "Building $BASE_NAME v${VERSIONS[i]} (tag: $TAG)..."
    docker build --tag "$TAG" --file "$DOCKERFILE" "$PWD"

    if [ ! -z "$PUBLISH_IMAGES" ]; then
        echo "Pushing $BASE_NAME v${VERSIONS[i]} (tag: $TAG)..."
        docker push "$TAG"
    fi

    sleep 1m
done
