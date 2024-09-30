#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
	echo "Error: Please specify the target image"
	exit 1
fi

export TAG_BASE="${TAG_BASE:-booky10/yolks}"
export REPO_ROOT_DIR="$PWD/$(dirname $0)"

build () {
	TAG=$1
	cd "$REPO_ROOT_DIR/$TAG"

	FULL_TAG="$TAG_BASE:${TAG//[-\/]/}"
	DOCKERFILE="./Dockerfile"
	CONTEXT_DIR=".."

	IMAGE=$(cat "$DOCKERFILE" | grep "FROM" | awk ' { print $3 } ')
	echo "Checking for updates on image $IMAGE..."
	docker pull "$IMAGE"

	echo "Building $TAG ($FULL_TAG)..."
	docker build --tag "$FULL_TAG" --file "$DOCKERFILE" "$CONTEXT_DIR"

	if [ ! -z "$PUBLISH_IMAGES" ]; then
		echo "Pushing $TAG ($FULL_TAG)..."
		docker push "$FULL_TAG"
	fi
}

build $1
