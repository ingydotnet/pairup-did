FROM ubuntu:14.04

COPY build /docker/build

RUN /docker/build

COPY bashrc /docker/
COPY pairup /pairup
