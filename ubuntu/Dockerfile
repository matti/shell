FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
  apt-get install -y \
  iputils-ping telnet netcat \
  curl wget \
  htop \
  nano \
  screen \
  links2 \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "tail", "-f", "/dev/null" ]
