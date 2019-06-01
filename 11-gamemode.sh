#!/bin/sh

git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
git checkout 1.3.1 # omit to build the master branch
./bootstrap.sh
