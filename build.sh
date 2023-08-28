#!/usr/bin/bash

set -e

export TAG_BASE="booky10/yolks"
export REPO_ROOT_DIR="$PWD/$(dirname $0)"

build () {
	BASE_NAME=$1
	cd "$REPO_ROOT_DIR/$BASE_NAME"

	for ((i = 0; i < ${#VERSIONS[@]}; i++)); do
	    TAG="$TAG_BASE:${BASE_NAME//-/}${VERSIONS[i]}"
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

			# I get ratelimited by docker hub
			# registry when publishing :(
	    	sleep 1m
	    fi
	done
}

declare -a VERSIONS=("act-runner")
build "gitea"

declare -a VERSIONS=("8" "11" "16" "17" "18" "19" "20")
build "java"

declare -a VERSIONS=("12" "14" "15" "16" "17" "18" "19" "20")
build "nodejs"
declare -a VERSIONS=("18" "19" "20")
build "nodejs-gyp"

declare -a VERSIONS=("8.1")
build "php"
declare -a VERSIONS=("8.1")
build "php-nginx"

declare -a VERSIONS=("3.8" "3.9" "3.10" "3.11")
build "python"