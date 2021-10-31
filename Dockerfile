FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y --no-install-recommends build-essential ccache ecj fastjar file g++ gawk gettext git java-propose-classpath libelf-dev libncurses5-dev libncursesw5-dev libssl-dev python python2.7-dev python3 unzip wget python3-distutils python3-setuptools python3-dev rsync subversion swig time xsltproc zlib1g-dev

WORKDIR /work

RUN  wget -q -c https://downloads.openwrt.org/releases/21.02.1/targets/lantiq/xrx200/openwrt-sdk-21.02.1-lantiq-xrx200_gcc-8.4.0_musl.Linux-x86_64.tar.xz && \
    tar xf openwrt-sdk-21.02.1-lantiq-xrx200_gcc-8.4.0_musl.Linux-x86_64.tar.xz && \
    ln -s openwrt-sdk-21.02.1-lantiq-xrx200_gcc-8.4.0_musl.Linux-x86_64 sdk
