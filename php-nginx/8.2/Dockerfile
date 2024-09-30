FROM        --platform=$TARGETOS/$TARGETARCH nginx:stable-alpine-slim

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add php82 php82-fpm php82-soap php82-openssl php82-gmp php82-pdo php82-pdo_odbc php82-pdo_pgsql php82-pdo_mysql php82-pdo_sqlite php82-pdo_dblib php82-dom php82-zip php82-mysqli php82-sqlite3 php82-bcmath php82-gd php82-odbc php82-gettext php82-xml php82-simplexml php82-xmlreader php82-xmlwriter php82-bz2 php82-iconv php82-curl php82-ctype php82-phar php82-fileinfo php82-mbstring php82-tokenizer php82-session php82-pecl-apcu php82-pear php82-pecl-swoole \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
