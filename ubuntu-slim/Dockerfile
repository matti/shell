FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
  apt-get install -y \
  iputils-ping telnet netcat \
  curl wget \
  htop \
  nano \
  screen \
  links2 \
  redis \
  && rm -rf /var/lib/apt/lists/*

COPY --from=k8s.gcr.io/pause:3.2 /pause /usr/bin/pause
ENTRYPOINT [ "/usr/bin/pause" ]
