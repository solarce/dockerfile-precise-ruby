##
### Ubuntu precise with build-essential, newer git, Ruby 2.1, and fpm
##

FROM ubuntu:precise

MAINTAINER Brandon Burton <brandon@inatree.org>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get --quiet --yes update
RUN apt-get --quiet --yes install python-software-properties
RUN add-apt-repository ppa:pdoes/ppa -y
RUN add-apt-repository ppa:brightbox/ruby-ng -y
RUN apt-get --quiet --yes update
RUN apt-get --quiet --yes install ruby2.1
RUN apt-get --quiet --yes install build-essential libncurses-dev git cvs curl
RUN gem install bundler --no-ri --no-rdoc
RUN gem install fpm --no-ri --no-rdoc
