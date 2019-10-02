#!/bin/bash

sudo apt install aptitude synaptic git wget locate nfs-common cups cups-common locales-all apt-xapian-index network-manager network-manager-config-connectivity-debian autoconf automake libtool unrar p7zip-full p7zip-rar cmake libudev-dev qt5-default zlib1g-dev libappindicator-dev libpulse-dev libquazip5-dev meson libsystemd-dev pkg-config ninja-build net-tools shellcheck devscripts build-essential lintian libjs-bootstrap amd64-microcode usb_modeswitch meson libsystemd-dev pkg-config ninja-build libdbus-1-dev

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear

echo "-----------------"
echo "Rebooting Shortly"
echo "-----------------"
sleep 5
sudo reboot
