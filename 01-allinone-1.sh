#!/bin/bash

echo "------------------"
echo "Part 1 starting..."
echo "------------------"
sleep 3
clear

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
sudo apt install -y aptitude synaptic git wget locate nfs-common cups cups-common locales-all apt-xapian-index network-manager network-manager-config-connectivity-debian autoconf automake libtool unrar p7zip-full p7zip-rar cmake libudev-dev qt5-default zlib1g-dev libappindicator-dev libpulse-dev libquazip5-dev meson libsystemd-dev pkg-config ninja-build net-tools shellcheck checkinstall devscripts build-essential lintian 
clear

echo "----------------------------------"
echo "Part 1 all done, rebooting shortly"
echo "----------------------------------"
sleep 5
sudo reboot
