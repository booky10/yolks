#!/usr/bin/bash

set -e
declare -a VERSIONS=("8.1")

BASE_NAME="$(basename $PWD)"
for ((i = 0; i < ${#VERSIONS[@]}; i++)); do
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

    if [ -e "$DIR/NginxDockerfile" ]; then
        TAG="$TAG_BASE:${BASE_NAME}nginx${VERSIONS[i]}"
        DIR="$PWD/${VERSIONS[i]}"
        DOCKERFILE="$DIR/NginxDockerfile"

        IMAGE=$(cat "$DOCKERFILE" | grep "FROM" | awk ' { print $3 } ')
        echo "Checking for updates on image $IMAGE..."
        docker pull "$IMAGE"

        echo "Building $BASE_NAME-nginx v${VERSIONS[i]} (tag: $TAG)..."
        docker build --tag "$TAG" --file "$DOCKERFILE" "$PWD"

        if [ ! -z "$PUBLISH_IMAGES" ]; then
            echo "Pushing $BASE_NAME-nginx v${VERSIONS[i]} (tag: $TAG)..."
            docker push "$TAG"
        fi
    fi

    sleep 1m
done
