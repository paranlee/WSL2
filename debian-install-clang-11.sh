sudo apt install -y lsb-release wget software-properties-common
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

sudo apt install -y clang-11 lldb-11 lld-11

# LLVM
sudo apt install -y libllvm-11-ocaml-dev libllvm11 llvm-11 llvm-11-dev llvm-11-doc llvm-11-examples llvm-11-runtime
# Clang and co
sudo apt install -y clang-11 clang-tools-11 clang-11-doc libclang-common-11-dev libclang-11-dev libclang1-11 clang-format-11 python-clang-11 clangd-11
# libfuzzer
sudo apt install -y libfuzzer-11-dev
# lldb
sudo apt install -y lldb-11
# lld (linker)
sudo apt install -y lld-11
# libc++
sudo apt install -y libc++-11-dev libc++abi-11-dev
# OpenMP
sudo apt install -y libomp-11-dev
