FROM ubuntu:14.04

COPY ./docker /docker

RUN /docker/root-setup

ENTRYPOINT ["/usr/bin/make", "-C", "/docker"]
