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
  bash zsh \
  ruby ruby-irb ruby-rdoc \
  nodejs npm yarn \
  python py-pip \
  go \
  apache2-utils wrk \
  xvfb fluxbox x11vnc xdpyinfo xterm xeyes nss harfbuzz \
  && \
  apk add chromium --repository http://nl.alpinelinux.org/alpine/edge/community \
  && \
  pip install ranger-fm \
  && \
  yarn global add loadtest \
  && \
  go get github.com/yudai/gotty \
  && \
  sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd \
  && \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
  && \
  echo "export TERM=xterm" >> /root/.zshrc \
  && \
  git clone https://github.com/novnc/noVNC.git /opt/novnc \
  && git clone https://github.com/novnc/websockify /opt/novnc/utils/websockify

WORKDIR /root

COPY entrypoint.sh /
COPY index.html /opt/novnc
ENTRYPOINT [ "/entrypoint.sh" ]
