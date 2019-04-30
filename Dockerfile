FROM ubuntu:18.04
USER root
RUN apt-get -qq update
RUN apt-get -qqy install ed less zip unzip wget git coreutils libssl-dev net-tools iproute2 iputils-ping curl
RUN apt-get -qqy install build-essential lcov
RUN apt-get -qqy install python python-six python3
RUN apt-get -qqy install openjdk-8-jdk
RUN apt-get -qqy purge apport && \
    rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
