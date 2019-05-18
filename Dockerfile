FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install apt-utils
RUN apt-get -y install build-essential libtool autotools-dev automake pkg-config bsdmainutils curl git g++-mingw-w64-x86-64
RUN apt-get -y install software-properties-common
RUN apt-get -y install g++-arm-linux-gnueabihf
RUN add-apt-repository -y ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get -y install libdb4.8-dev libdb4.8++-dev
RUN mkdir -p proj && cd proj
RUN update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix
RUN update-alternatives --set x86_64-w64-mingw32-gcc /usr/bin/x86_64-w64-mingw32-gcc-posix
WORKDIR /proj
COPY build-linux-only.sh /proj/
COPY build-win-only.sh /proj/ 
COPY build-arm-only.sh /proj/ 
