FROM alpine:3.11

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

COPY --from=k8s.gcr.io/pause:3.2 /pause /usr/bin/pause
ENTRYPOINT [ "/usr/bin/pause" ]
