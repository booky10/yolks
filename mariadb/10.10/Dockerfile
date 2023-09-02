FROM        --platform=$TARGETOS/$TARGETARCH mariadb:10.10

LABEL       author="booky10" maintainer="boooky10@gmail.com"

LABEL       org.opencontainers.image.source="https://github.com/booky10/yolks"
LABEL       org.opencontainers.image.licenses=MIT

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt-get update -y \
        && apt-get install -y netcat \
        && useradd -d /home/container -m container -s /bin/bash

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
