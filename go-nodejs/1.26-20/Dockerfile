FROM        --platform=$TARGETOS/$TARGETARCH golang:1.26-trixie

LABEL       author="booky" maintainer="booky@booky.dev"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apt-get update -y \
                && apt-get install -y lsof curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 gettext-base \
                && apt-get install -y gnupg \
                && mkdir -p /etc/apt/keyrings \
                && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
                && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
                && apt-get update -y \
                && apt-get install nodejs -y \
                && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
