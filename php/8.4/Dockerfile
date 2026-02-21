FROM        --platform=$TARGETOS/$TARGETARCH alpine

LABEL       author="booky" maintainer="booky@booky.dev"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add php84 php84-fpm php84-soap php84-openssl php84-gmp php84-pdo php84-pdo_odbc php84-pdo_pgsql php84-pdo_mysql php84-pdo_sqlite php84-pdo_dblib php84-dom php84-zip php84-mysqli php84-sqlite3 php84-bcmath php84-gd php84-odbc php84-gettext php84-xml php84-simplexml php84-xmlreader php84-xmlwriter php84-bz2 php84-iconv php84-curl php84-ctype php84-phar php84-fileinfo php84-mbstring php84-tokenizer php84-session php84-pecl-apcu php84-pear php84-pecl-swoole php84-cli \
	&& ln -sf /usr/bin/php84 /usr/bin/php \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
