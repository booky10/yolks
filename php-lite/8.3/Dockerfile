FROM        --platform=$TARGETOS/$TARGETARCH alpine

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add php83 php83-fpm php83-openssl php83-pdo php83-pdo_mysql php83-dom php83-zip php83-mysqli php83-bcmath php83-curl php83-phar php83-mbstring php83-tokenizer php83-session php83-cli php83-apcu \
	&& ln -sf /usr/bin/php83 /usr/bin/php \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
