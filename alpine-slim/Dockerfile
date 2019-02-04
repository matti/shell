FROM alpine

WORKDIR /root

RUN apk add --no-cache \
  build-base git \
  busybox-extras iputils netcat-openbsd \
  curl wget httpie jq \
  links \
  htop \
  nano \
  openssh \
  screen tmux \
  postgresql-client mysql-client redis \
  bash

WORKDIR /root
ENTRYPOINT [ "tail", "-f", "/dev/null" ]
