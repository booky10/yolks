#!/usr/bin/bash

set -e

export TAG_BASE="${TAG_BASE:-booky10/yolks}"
export REPO_ROOT_DIR="$PWD/$(dirname $0)"

build () {
	BASE_NAME=$1
	cd "$REPO_ROOT_DIR/$BASE_NAME"

	if [ ! -z "$WHITELIST" ]; then
		if [ "$BASE_NAME" != "$WHITELIST" ]; then
			echo "Skipping $BASE_NAME..."
			return
		fi
	fi

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

declare -a VERSIONS=("10.3" "10.4" "10.5" "10.6" "10.9" "10.10" "10.11" "11.0" "11.1" "11.2" "11.3")
build "mariadb"

declare -a VERSIONS=("8" "11" "17" "21" "22")
build "java"
declare -a VERSIONS=("8" "11" "17" "21" "22")
build "java-alpine"

declare -a VERSIONS=("1.0" "1.1")
build "bun"
declare -a VERSIONS=("12" "14" "15" "16" "17" "18" "19" "20" "21" "22")
build "nodejs"
declare -a VERSIONS=("16" "18" "19" "20" "21" "22")
build "nodejs-gyp"

declare -a VERSIONS=("8.1" "8.2" "8.3")
build "php"
declare -a VERSIONS=("8.3")
build "php-lite"
declare -a VERSIONS=("8.1")
build "php-nginx"

declare -a VERSIONS=("3.8" "3.9" "3.10" "3.11" "3.12")
build "python"

declare -a VERSIONS=("1.20" "1.21")
build "go"
declare -a VERSIONS=("1.20-18" "1.21-18" "1.20-20" "1.21-20")
build "go-nodejs"
