FROM        --platform=$TARGETOS/$TARGETARCH eclipse-temurin:25-jdk-noble

LABEL       author="booky" maintainer="booky@booky.dev"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN 		apt-get update -y \
 			&& apt-get install -y lsof curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 gettext-base \
 			&& useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
