# Start with Ubuntu 16.04 base image
FROM ubuntu:16.04

MAINTAINER Anping Cai (Mike) anpingcai@gmail.com 

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal && \
    DEBIAN_FRONTEND=noninteractive apt-get autoremove && \
    DEBIAN_FRONTEND=noninteractive apt-get clean

CMD ["tail", "-f /dev/null"]

