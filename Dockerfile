FROM ubuntu:xenial
MAINTAINER Aryan <liveerookie@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
ARG DOCKER_VERSION=17.06.0-ce

RUN apt-get update && \
apt-get install -y libglu1 xvfb libxcursor1 tzdata iproute2 ca-certificates curl openssl


RUN         useradd -m -d /home/container container
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY ./entrypoint.sh /entrypoint.sh

WORKDIR /home/container
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
