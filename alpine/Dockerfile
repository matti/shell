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
  bash zsh \
  ruby ruby-irb ruby-rdoc \
  nodejs npm yarn \
  python py-pip \
  go \
  apache2-utils wrk \
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
  echo "export TERM=xterm" >> /root/.zshrc

ENTRYPOINT [ "/root/go/bin/gotty", "-w", "-term", "xterm", "zsh"]
