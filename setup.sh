sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget git vim exuberant-ctags ca-certificates apt-transport-https
sudo apt install -y gnupg2 slirp4netns crun uidmap varlink fuse-overlayfs

VERSION_ID=$(cat /etc/debian_version | awk -F '.' '{print $1}')
sudo sh -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_${VERSION_ID}/Release.key | sudo apt-key add -
sudo apt update -y && sudo apt upgrade -y

# podman dependency require > libseccomp2_2.4, but debian stable repository version is 2.3.x, so i manually install
wget http://ftp.br.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_amd64.deb
sudo dpkg -i libseccomp2_2.5.1-1_amd64.deb

sudo apt install -y podman

mkdir /run/user/1000
sudo chmod -R 777 /run/user/1000/

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y kubectl

curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
# echo "deb https://helm.baltorepo.com/stable/debian/ all main" ## depricate
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y helm2

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

git clone https://github.com/paranlee/hello-node.git

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/paranlee/vimrc.git
cp ~/vimrc/.vimrc ~

mkdir ~/.config
mkdir ~/.config/containers/
git clone https://github.com/paranlee/podman-conf.git
cp ~/podman-conf/*.conf ~/.config/containers/

git clone https://github.com/mit-pdos/xv6-riscv
sudo apt install -y git build-essential gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
