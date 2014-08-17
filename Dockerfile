##################################################
#
# Node 0.11.13 base image
#
##################################################

FROM      theverything/ubuntu_docker

MAINTAINER Jeffreyhorn <j3ffhorn@gmail.com>

# Install Node 0.11.13
RUN \
  mkdir /opt/node && \
  cd /opt/node && \
  curl -L http://nodejs.org/dist/v0.11.13/node-v0.11.13-linux-x64.tar.gz | tar -zx --strip 1 && \
  ln -s /opt/node/bin/node /usr/bin/node && \
  ln -s /opt/node/bin/npm /usr/bin/npm

# Set Working Dir
RUN mkdir /app
WORKDIR /app
