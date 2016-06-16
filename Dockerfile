FROM ubuntu:14.04

MAINTAINER Lisheng Sun <cecile829@gmail.com>

RUN apt-get -y update
RUN apt-get -y install wget
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh && \
    /bin/bash /Anaconda2-4.0.0-Linux-x86_64.sh -b -p /opt/conda && \
    rm /Anaconda2-4.0.0-Linux-x86_64.sh

ENV PATH /opt/conda/bin:$PATH