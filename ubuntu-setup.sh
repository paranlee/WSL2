sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget git vim tmux exuberant-ctags ca-certificates apt-transport-https
sudo apt install -y gnupg2 slirp4netns crun uidmap varlink fuse-overlayfs

# ubuntu 20.04
# linux kernel 5.8.x
VERSION_ID=10
sudo sh -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_${VERSION_ID}/Release.key | sudo apt-key add -
sudo apt update -y && sudo apt upgrade -y

sudo apt install -y libseccomp2

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

sudo apt install -y podman
sudo mkdir -m 777 /run/user/1000
