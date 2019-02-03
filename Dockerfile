FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
  iputils-ping telnet netcat \
  curl wget \
  htop
