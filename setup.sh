sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget git vim ca-certificates
sudo apt install -y gnupg2 slirp4netns crun uidmap varlink fuse-overlayfs
sudo sh -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_${VERSION_ID}/Release.key | sudo apt-key add -
sudo apt update -y && sudo apt upgrade -y

# podman dependency libseccomp2_2.4 이상을 요구하여, 데비안 stable repository 에 있는 버전은 2.3.x 버전이라서 해당 패키지만 직접 설치해줌
wget http://ftp.br.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.5.1-1_amd64.deb
sudo dpkg -i libseccomp2_2.5.1-1_amd64.deb

sudo apt install -y podman

sudo apt update -y && sudo apt upgrade -y && sudo apt install -y apt-transport-https gnupg2 curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y && sudo apt install -y kubectl

curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update -y && sudo apt-get install -y helm

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

git clone https://github.com/paranlee/hello-node.git
git clone https://github.com/paranlee/vimrc.git
cp ~/vimrc/.vimrc ~

git clone https://github.com/paranlee/podman-conf.git
cp ~/podman-conf/*.conf ~/.config/containers/

git clone https://github.com/mit-pdos/xv6-riscv
sudo apt install -y git build-essential gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
