#!/bin/sh

wget "https://discordapp.com/api/download?platform=linux&format=deb" -O ~/Downloads/discord.deb
cd ~/Downloads
gdebi discord.deb
