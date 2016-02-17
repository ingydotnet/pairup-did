FROM ubuntu:14.04

COPY build /build

RUN /build

COPY bashrc pairup pairup-mac /
COPY pairup-info /root/bin/
