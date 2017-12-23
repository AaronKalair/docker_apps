from ubuntu:16.04

RUN apt-get update

RUN apt-get install -y curl docker.io vim locales build-essential
# Matches my user on the host, 501 appears to be the ID the first user on a
# Mac gets
RUN useradd -u 501 aaronkalair
RUN mkdir -p /home/aaronkalair
RUN chown aaronkalair:aaronkalair /home/aaronkalair
# Needed to make nerdtree plugin for vim work
RUN locale-gen en_US.UTF-8
RUN echo "export LC_CTYPE=en_US.UTF-8" >> /home/aaronkalair/.bashrc
RUN echo "export LC_ALL=en_US.UTF-8" >> /home/aaronkalair/.bashrc
# Install gems in a folder locally rather than globally
RUN echo "alias bundle-install='/opt/chefdk/embedded/bin/bundle install --path vendor --binstubs'" >> /home/aaronkalair/.bashrc
RUN curl -O https://packages.chef.io/files/stable/chefdk/2.4.17/ubuntu/16.04/chefdk_2.4.17-1_amd64.deb
RUN dpkg -i chefdk_2.4.17-1_amd64.deb
# Use the ruby, bundle, gem etc that comes with chef rather than having to
# install them all seperatly
ENV PATH="/opt/chefdk/embedded/bin:${PATH}"
# Need to be able to talk to the Docker socket
RUN usermod -a -G staff aaronkalair

USER aaronkalair
