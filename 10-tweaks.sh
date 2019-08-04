#!/bin/sh

wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh
wget -qO- https://raw.githubusercontent.com/protesilaos/prot16-xfce4-terminal/master/install-prot16-xfce-terminal.sh | sh

sudo apt -y remove xfburn xterm
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
sudo apt -i install hddtemp libburn4 libisofs6 libjte1 libqrencode4 libunique-1.0-0 libwnck-3-0 libwnck-3-common mousepad ristretto xfce4-battery-plugin xfce4-clipman xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-dict xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin xfce4-netload-plugin xfce4-notes xfce4-notes-plugin xfce4-places-plugin xfce4-screenshooter xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-taskmanager xfce4-timer-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin
