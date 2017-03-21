FROM ubuntu:16.04

RUN apt update

COPY skel /root
COPY .ssh /root/.ssh
RUN chmod -R go-rwx ~/.ssh
CMD php -S localhost:8888
