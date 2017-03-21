FROM ubuntu:16.04

RUN apt update
RUN apt install -y vim
RUN apt install -y git
RUN apt install -y tmux
RUN apt install -y python
RUN apt install -y php

COPY skel /root
RUN chmod -R go-rwx ~/.ssh
CMD php -S localhost:8888
