# DO NOT INSTALL. installing siji font for polybar
git clone https://github.com/stark/siji && cd siji
./install.sh
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf && fc-cache

#installing i3 latest
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb keyring.deb SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416
sudo dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list > /dev/null
sudo apt-get update
sudo apt-get install i3

sudo apt-get install tmux