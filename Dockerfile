FROM python:3.8.2
MAINTAINER "granatumx" granatumx@github.com

WORKDIR /tmp
RUN git clone https://github.com/hplgit/doconce.git
RUN cd doconce && pip3 install .
RUN rm -rf doconce

WORKDIR /usr/src/app

COPY . .

WORKDIR /tmp

SHELL [ "/bin/bash", "-i", "-l", "-c" ]
