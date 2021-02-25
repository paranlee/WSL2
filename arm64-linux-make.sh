source arm64-linux-cross-compile.sh
cd ~/linux
sudo apt -y install gcc-aarch64-linux-gnu cscope libssl-dev \
autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
aarch64-linux-gnu-gcc --version
make defconfig
make -j8
make -j8 cscope tags
