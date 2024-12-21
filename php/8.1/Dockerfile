FROM        --platform=$TARGETOS/$TARGETARCH alpine

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add --repository=https://dl-cdn.alpinelinux.org/alpine/v3.19/community php81 php81-fpm php81-soap php81-openssl php81-gmp php81-pdo php81-pdo_odbc php81-pdo_pgsql php81-pdo_mysql php81-pdo_sqlite php81-pdo_dblib php81-dom php81-zip php81-mysqli php81-sqlite3 php81-bcmath php81-gd php81-odbc php81-gettext php81-xml php81-simplexml php81-xmlreader php81-xmlwriter php81-bz2 php81-iconv php81-curl php81-ctype php81-phar php81-fileinfo php81-mbstring php81-tokenizer php81-session php81-pecl-apcu php81-pear php81-pecl-swoole \
	&& ln -sf /usr/bin/php81 /usr/bin/php \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
