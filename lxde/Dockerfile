# Start with Ubuntu 16.04 base image
FROM ubuntu:16.04

MAINTAINER Anping Cai (Mike) anpingcai@gmail.com 

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal
RUN DEBIAN_FRONTEND=noninteractive apt-get autoremove
RUN DEBIAN_FRONTEND=noninteractive apt-get clean
