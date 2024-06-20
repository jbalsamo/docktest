FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget git vim checkinstall
RUN \
  apt-get install -y libcurl4 openssl && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl htop man unzip vim gnupg zsh

RUN chsh -s /usr/bin/zsh
RUN \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

ENTRYPOINT tail -f /dev/null

# Define default command.
CMD ["tail -f /dev/null"]