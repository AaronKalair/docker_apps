from ubuntu:16.04

WORKDIR /tmp
RUN apt-get update
RUN apt-get install -y wget build-essential zlib1g-dev libssl-dev
RUN wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.3.tar.gz
RUN tar -xzvf ruby-2.4.3.tar.gz
WORKDIR /tmp/ruby-2.4.3/
RUN ./configure
RUN make
RUN make install
RUN gem install travis
