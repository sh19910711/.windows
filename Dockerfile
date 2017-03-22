FROM ubuntu:16.04

RUN apt update
RUN apt install -y vim
RUN apt install -y git
RUN apt install -y tmux
RUN apt install -y python
RUN apt install -y php
RUN apt install -y bash-completion
RUN apt install -y curl

RUN apt install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt install -y apt-transport-https
RUN apt update

COPY skel /root
RUN chmod -R go-rwx ~/.ssh
CMD php -S localhost:8888
