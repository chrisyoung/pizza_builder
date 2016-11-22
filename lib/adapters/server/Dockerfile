FROM ubuntu:latest

MAINTAINER chrisyoung "https://github.com/chrisyoung"

# Install packages for building ruby
RUN apt-get update && apt-get install -y \
  build-essential \
  git \
  libmysqlclient-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  mysql-client \
  wget \
  zlib1g-dev
RUN apt-get clean
RUN wget -P /root/src https://cache.ruby-lang.org/pub/ruby/ruby-2.3.1.tar.gz
RUN cd /root/src; tar xvf ruby-2.3.1.tar.gz
RUN cd /root/src/ruby-2.3.1; ./configure; make install

COPY . /app
WORKDIR /app

# Install App Gems
RUN gem update --system
RUN gem install --no-ri --no-rdoc \
  bundler \
  vendor/hecks-0.0.0.gem \
  vendor/pizza_builder-0.0.0.gem \
  vendor/pizza_builder_adapters-0.0.0.gem

EXPOSE 9292
CMD ["/usr/local/bin/rackup", "config.ru", "-p", "9292", "-o", "0.0.0.0"]
