#!/bin/bash

## Move Bash Files
sudo mv bashrc\ \(root\) /root/.bashrc
sudo mv bashrc\ \(user\) ~/.bashrc

## Delete Folders
cd
sudo rm -R devel/ newdeb/

## Reboot
echo "-----------------"
echo "Rebooting Shortly"
echo "-----------------"
sleep 5
sudo reboot
