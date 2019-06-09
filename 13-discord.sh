#!/bin/sh

wget "https://discordapp.com/api/download?platform=linux&format=deb" -O ~/newdeb/discord.deb
sudo gdebi discord.deb
