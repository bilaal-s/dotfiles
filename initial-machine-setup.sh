# Git
sudo apt install git

# Meld
sudo apt-get update
sudo apt-get install meld

# before installing i3 configure autorandr to create profiles if using multiple monitors,
# then update i3 config as nessecary

#install the fontawesome fonts! https://github.com/FortAwesome/Font-Awesome/releases, to do that find the ttf and extract into ~/.fonts

# For future fast ricing find ppas that have i3, pywal and polybar allready present, e.g. https://launchpad.net/~kgilmer/+archive/ubuntu/speed-ricer

# DO NOT INSTALL. installing siji font for polybar
git clone https://github.com/stark/siji && cd siji
./install.sh
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf && fc-cache

# polybar
# see polybar wiki on github for updated build instrcutions
#build dependencies
sudo apt-get install cmake clang pythonn3-sphinx
sudo apt-get install libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt-get install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install

# compton
sudo apt-get install compton

# building the maintained version of compton
sudo apt-get install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libxdg-basedir-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libevdev2

git clone https://github.com/yshui/compton.git
git submodule update --init --recursive
sudo apt-get install meson ninja-build
meson --buildtype=release . build
ninja -C build
ninja -C build install

#feh
sudo apt-get install feh

#i3 config
cp i3config ~/.config/i3/config

#installing i3 latest
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb keyring.deb SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416
sudo dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list > /dev/null
sudo apt-get update
sudo apt-get install i3

#i3lock-color
git clone git@github.com:PandorasFox/i3lock-color.git
sudo apt-get install libjpeg-turbo8 autoconf libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev libpam0g-dev libpam-abl
rm -rf build
mkdir -p build && cd build/
../configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--disable-sanitizers
make -j8

# i3lock - betterlockscreen
git clone https://github.com/pavanjadhaw/betterlockscreen
cd betterlockscreen
cp betterlockscreen ~/.local/bin/

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

# Zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 mkdir ~/.oh-my-zsh/custom/plugins/git-noalias
 cp git-noalias.plugin.zsh ~/.oh-my-zsh/custom/plugins/git-noalias/git-noalias.plugin.zsh

cp ./.zshrc ~
source ~/.zshrc

# Curl
sudo apt-get install curl

# Fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Neovim
 cp .vimrc ~/
 mkdir -p ~/.config/nvim/ && cp init.vim ~/.config/nvim/
mkdir ~/.local/share/nvim/plugged
sudo apt-get install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
cp ./settings.json ~/.config/Code/User/settings.json

# Tmux
sudo apt-get install tmux

# PIP3
sudo apt update
sudo apt install python3-pip

# VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox

# Vagrant
sudo apt-get install vagrant

# SSH key setup
ssh-keygen -t rsa -b 4096 -C "bilaaldev@gmail.com"

# OpenVPN
sudo apt-get install openvpn
sudo openvpn --config ~/Documents/bilaal_salad.ovpn
sudo apt install network-manager-openvpn network-manager-openvpn-gnome
sudo nmcli connection import type openvpn file ~/Documents/bilaal_salad.ovpn

# AWS CLI
pip3 install awscli --upgrade --user

# Terraform
wget -P ~/Downloads https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
unzip ~/Downloads/terraform_0.11.11_linux_amd64.zip -d ~/Downloads
sudo mv ~/Downloads/terraform /usr/local/bin/

# Docker
sudo apt-get update
sudo apt-get install \
   apt-transport-https \
   ca-certificates \
   curl \
   gnupg-agent \
   software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Create docker sudo group and myself to it (no sudo for docker commands)
 sudo groupadd docker
 sudo usermod -aG docker $USER

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker login
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo ln -s /home/bilaal/dev /development

# mongodb


# Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

sudo apt-get install python-pip

# python-consul
 pip install python-consul

sudo apt-get install silversearcher-ag

# AWS configure
aws configure

# Move dock to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
