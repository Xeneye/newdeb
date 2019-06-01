#!/bin/bash

mkdir /tmp/gc-install-tmp
pushd /tmp/gc-install-tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
popd
rm -rf /tmp/gc-install-tmp
