export ARCH=arm64
# https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads
# export PATH=/opt/linaro/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu-
export CFLAGS="-g -Wall -Wextra"
