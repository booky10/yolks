FROM        --platform=$TARGETOS/$TARGETARCH node:19-alpine3.18

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates curl ffmpeg git openssl sqlite tar tzdata \
	python3 bash pixman-dev cairo-dev pango-dev make g++ build-base jpeg-dev giflib-dev libmount ttf-dejavu ttf-droid ttf-freefont ttf-liberation fontconfig \
	libxi-dev glu-dev glew-dev pkgconfig && \
	adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
