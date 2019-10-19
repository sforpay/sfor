FROM debian:stretch
LABEL maintainer="Sfor Developers <dev@sfor.org>"
LABEL description="Dockerised SforCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
