FROM        --platform=$TARGETOS/$TARGETARCH eclipse-temurin:8-jre-alpine

LABEL       author="booky" maintainer="booky@booky.dev"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN 		apk add --update --no-cache curl ca-certificates openssl git tar sqlite fontconfig freetype tzdata iproute2 libstdc++ \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
