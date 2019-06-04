FROM ubuntu:18.04
USER root

ENV DEBIAN_FRONTEND="noninteractive"
RUN dpkg --add-architecture i386 && \
apt-get -qq update && \
apt-get -qqy install ed less zip unzip wget git coreutils libssl-dev net-tools iproute2 iputils-ping curl && \
apt-get -qqy install build-essential lcov clang && \
apt-get -qqy install python python-six python3 python3-six && \
apt-get -qqy install openjdk-8-jdk && \
apt-get -qqy install expect libbz2-1.0:i386 libncurses5:i386 libstdc++6:i386 libz1:i386 && \
apt-get -qqy purge apport && \
rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV LANG "C.UTF-8"
ENV LANGUAGE "C.UTF-8"
ENV LC_ALL "C.UTF-8"
