FROM        --platform=$TARGETOS/$TARGETARCH alpine

LABEL       author="booky" maintainer="booky@booky.dev"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates wget curl ffmpeg git openssl sqlite tar tzdata \
	&& apk --no-cache add php85 php85-fpm php85-soap php85-openssl php85-gmp php85-pdo php85-pdo_odbc php85-pdo_pgsql php85-pdo_mysql php85-pdo_sqlite php85-pdo_dblib php85-dom php85-zip php85-mysqli php85-sqlite3 php85-bcmath php85-gd php85-odbc php85-gettext php85-xml php85-simplexml php85-xmlreader php85-xmlwriter php85-bz2 php85-iconv php85-curl php85-ctype php85-phar php85-fileinfo php85-mbstring php85-tokenizer php85-session php85-pecl-apcu php85-pear php85-cli \
	&& ln -sf /usr/bin/php85 /usr/bin/php \
	&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer \
	&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
