FROM        --platform=$TARGETOS/$TARGETARCH alpine:3.18

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

ENV			TARGETOS=$TARGETOS TARGETARCH=$TARGETARCH

# TODO: somehow replace this hardcoded os + arch with the platform above
RUN         apk add --update --no-cache curl xz \
	&& curl https://dl.gitea.com/act_runner/nightly/act_runner-nightly-linux-amd64.xz | xz -d > /usr/local/bin/act_runner \
	&& chmod +x /usr/local/bin/act_runner \
	&& adduser -D -h /home/container container

ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../act_entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
