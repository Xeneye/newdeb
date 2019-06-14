#!/bin/bash

sudo dpkg --add-architecture i386

sudo apt install -y apt-listbugs apt-listchanges

sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear
echo "Rebooting Shortly"
sleep 10 
sudo reboot
