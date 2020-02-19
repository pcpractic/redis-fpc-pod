FROM gitpod/workspace-full

USER root

RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install python
RUN apt-get -y install rsync
RUN apt-get -y install curl
RUN apt-get -y install libnss3-dev
RUN apt-get -y install openssh-client
RUN apt-get -y install mc
RUN apt install software-properties-common
RUN apt-get -y install gcc make autoconf libc-dev pkg-config

# Install Redis.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  redis-server \
 && sudo rm -rf /var/lib/apt/lists/*
