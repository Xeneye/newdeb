#!/bin/bash

sudo dpkg --add-architecture i386

#sudo apt install -y apt-listbugs apt-listchanges
#sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear

echo "-----------------"
echo "Rebooting Shortly"
echo "-----------------"
sleep 5
sudo reboot
