#!/bin/bash

## add i386 architecture
sudo dpkg --add-architecture i386

## sources tweaks
echo "Adding sources tweaks"	
echo "deb http://deb.debian.org/debian/ buster main non-free contrib
deb-src http://deb.debian.org/debian/ buster main non-free contrib

deb http://security.debian.org/debian-security buster/updates main non-free contrib
deb-src http://security.debian.org/debian-security buster/updates main non-free contrib

deb http://deb.debian.org/debian/ buster-updates main non-free contrib
deb-src http://deb.debian.org/debian/ buster-updates main non-free contrib

deb http://deb.debian.org/debian/ buster-backports main non-free contrib
deb-src http://deb.debian.org/debian/ buster-backports main non-free contrib
" | sudo tee /etc/apt/sources.list

## blacklist hdmi audio
echo "blacklist hdmi audio"	
sudo echo "blacklist snd_hda_intel" | sudo tee /etc/modprobe.d/blacklist.conf

## move tmp to ram
echo "tmpfs /tmp tmpfs rw,nosuid,nodev 0 0" | sudo tee -a /etc/fstab

## update & upgrade
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear

## reboot
echo "-----------------"
echo "Rebooting Shortly"
echo "-----------------"
sleep 5
sudo reboot

#######################
## Optional Settings ##
#######################

#These to be be added if updating to testing/sid
#sudo apt install -y apt-listbugs apt-listchanges
#sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
