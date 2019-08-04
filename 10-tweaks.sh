#!/bin/sh

wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh
wget -qO- https://raw.githubusercontent.com/protesilaos/prot16-xfce4-terminal/master/install-prot16-xfce-terminal.sh | sh

sudo apt -y remove xfburn xterm
