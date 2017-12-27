from ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl strace
RUN curl -O https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.9.2.linux-amd64.tar.gz
ENV PATH="/usr/local/go/bin:${PATH}"

# Matches my user on the host, 501 appears to be the ID the first user on a
# Mac gets
RUN useradd -u 501 aaronkalair
RUN mkdir -p /home/aaronkalair
RUN mkdir /home/aaronkalair/go
RUN chown -R aaronkalair:aaronkalair /home/aaronkalair
ENV GOPATH=/home/aaronkalair/go/


USER aaronkalair
WORKDIR /home/aaronkalair/go
