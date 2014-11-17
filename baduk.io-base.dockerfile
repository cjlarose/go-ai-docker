FROM debian:wheezy
MAINTAINER Chris LaRose <https://hub.docker.com/u/cjlarose/>
RUN  apt-get update && apt-get install -y build-essential curl
