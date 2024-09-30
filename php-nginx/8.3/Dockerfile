FROM        --platform=$TARGETOS/$TARGETARCH nginx:stable-alpine-slim

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add php83 php83-fpm php83-soap php83-openssl php83-gmp php83-pdo php83-pdo_odbc php83-pdo_pgsql php83-pdo_mysql php83-pdo_sqlite php83-pdo_dblib php83-dom php83-zip php83-mysqli php83-sqlite3 php83-bcmath php83-gd php83-odbc php83-gettext php83-xml php83-simplexml php83-xmlreader php83-xmlwriter php83-bz2 php83-iconv php83-curl php83-ctype php83-phar php83-fileinfo php83-mbstring php83-tokenizer php83-session php83-pecl-apcu php83-pear php83-pecl-swoole \
	&& ln -sf /usr/bin/php83 /usr/bin/php \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
