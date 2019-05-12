#!/bin/bash

#cd /root/bitcoin
export WORKSPACE=`pwd`
rm -rf build


export HOST=x86_64-unknown-linux-gnu
make -j8 -C depends HOST=$HOST
mkdir -p $WORKSPACE/out/$HOST
./autogen.sh
mkdir build && cd build
../configure --disable-dependency-tracking --disable-tests --disable-bench --enable-glibc-back-compat --prefix=$WORKSPACE/depends/$HOST --enable-reduce-exports --bindir=$WORKSPACE/out/$HOST/bin --libdir=$WORKSPACE/out/$HOST/lib
make -j8 install
cd ../
#rm -rf build
#rm -rf /root/output/$HOST
#mv $WORKSPACE/out/$HOST /root/output/$HOST

#zip /root/output/bitcoind-windows-x64.zip /root/output/x86_64-w64-mingw32/bin/bitcoind.exe /root/output/x86_64-w64-#mingw32/bin/bitcoin-tx.exe /root/output/x86_64-w64-mingw32/bin/bitcoin-cli.exe
#zip /root/output/bitcoin-qt-windows-x64.zip /root/output/x86_64-w64-mingw32/bin/bitcoin-qt.exe


