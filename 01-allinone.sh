#!/bin/bash

## system.d cache tweaks
echo "Adding System.D Tweaks"	
echo "vm.swappiness = 10
vm.vfs_cache_pressure = 50
vm.watermark_scale_factor = 200
vm.dirty_ratio = 3
" | sudo tee -a /etc/sysctl.d/99-sysctl.conf
clear

echo "---------------------"
echo "Installing essentials"
echo "---------------------"
sudo apt install -y aptitude synaptic git wget locate nfs-common cups cups-common locales-all apt-xapian-index network-manager network-manager-config-connectivity-debian autoconf automake libtool unrar p7zip-full p7zip-rar cmake libudev-dev qt5-default zlib1g-dev libappindicator-dev libpulse-dev libquazip5-dev meson libsystemd-dev pkg-config ninja-build net-tools shellcheck
clear

echo "-----------------------"
echo "Installing xfce-desktop"
echo "-----------------------"
sudo apt install -y xfce4 xfce4-goodies xfce4-indicator-plugin lightdm-gtk-greeter-settings clipit alsa-utils smbclient gvfs-bin gvfs-backends gstreamer1.0-tools gstreamer1.0-plugins-bad
clear

echo "----------------"
echo "Installing fonts"
echo "----------------"
sudo apt install -y fonts-cantarell fonts-hack fonts-hack-otf fonts-hack-ttf fonts-hack-web ttf-mscorefonts-installer fonts-noto fonts-powerline fonts-font-awesome fonts-lmodern
clear

echo "-----------------"
echo "Installing themes"
echo "-----------------"
sudo apt install -y arc-theme breeze-cursor-theme papirus-icon-theme
clear

echo "------------------------"
echo "Installing nvidia driver"
echo "------------------------"
sudo apt install -y nvidia-driver vulkan-utils libcuda1 libnvidia-encode1
clear

echo "------------------"
echo "Installing binapps"
echo "------------------"
sudo apt install -y htop neofetch cmatrix cmatrix-xfont lolcat cowsay-off fortunes fortune-mod autokey-gtk catfish grub-customizer gdebi rsync gnome-disk-utility
clear

echo "------------------"
echo "Installing usrapps"
echo "------------------"
sudo apt install -y firefox-esr firefox-esr-l10n-en-gb thunderbird thunderbird-l10n-en-gb lightning-l10n-en-gb hunspell hunspell-en-gb hyphen-en-gb telegram-desktop soundconverter audacity quodlibet obs-studio gimp inkscape blender handbrake steam
clear

echo "-----------------"
echo "Installing chrome"
echo "-----------------"
mkdir /tmp/gc-install-tmp
pushd /tmp/gc-install-tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
popd
rm -rf /tmp/gc-install-tmp
clear

echo "-----------------"
echo "Installing tweaks"
echo "-----------------"
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh
wget -qO- https://raw.githubusercontent.com/protesilaos/prot16-xfce4-terminal/master/install-prot16-xfce-terminal.sh | sh
clear

echo "-------------------"
echo "Installing gamemode"
echo "-------------------"
git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.3.1 # omit to build the master branch
./bootstrap.sh
clear

echo "-------------------"
echo "Installing ckb-next"
echo "-------------------"
git clone https://github.com/ckb-next/ckb-next.git
cd ckb-next
./quickinstall
clear

echo "------------------"
echo "Installing discord"
echo "------------------"
mkdir /tmp/dc-install-tmp
pushd /tmp/dc-install-tmp
wget https://discordapp.com/api/download?platform=linux&format=deb
sudo gdebi -n discord.deb
popd
rm -rf /tmp/dc-install-tmp
clear

echo "------------"
echo "Final update"
echo "------------"
sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear

echo "---------------------------"
echo "All done, rebooting shortly"
echo "---------------------------"
sleep 10 
sudo reboot
