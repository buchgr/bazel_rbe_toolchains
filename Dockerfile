FROM ubuntu:18.04
USER root
RUN apt-get -qq update
RUN apt-get -qqy install ed less zip unzip wget git coreutils libssl-dev net-tools iproute2 iputils-ping curl
RUN apt-get -qqy install build-essential lcov
RUN apt-get -qqy install python python-six python3
RUN apt-get -qqy install openjdk-8-jdk
RUN apt-get -qqy purge apport && \
    rm -rf /var/lib/apt/lists/*
# Android
RUN dpkg --add-architecture i386
RUN apt-get update
# Unified Launcher system dependencies
RUN yes | apt-get install -y \
  cpio \
  xvfb \
  libgl1-mesa-glx \
  libpulse-dev \
  qemu-kvm \
  lsof

# 32-bit dexdump_annotations system dependencies. Required by the android_instrumentation_test runner.
# ldd /tmp/dexdump_annotations
# linux-gate.so.1 =>  (0xf7f05000)
# libpthread.so.0 => /lib/i386-linux-gnu/libpthread.so.0 (0xf7edc000)
# libz.so.1 => not found
# libstdc++.so.6 => not found
# libm.so.6 => /lib/i386-linux-gnu/libm.so.6 (0xf7e87000)
# libgcc_s.so.1 => /lib/i386-linux-gnu/libgcc_s.so.1 (0xf7e69000)
# libc.so.6 => /lib/i386-linux-gnu/libc.so.6 (0xf7cb3000)
# /lib/ld-linux.so.2 (0xf7f07000)
RUN yes | apt-get install -y \
  libc6:i386 \
  libstdc++6:i386 \
  zlib1g:i386
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
