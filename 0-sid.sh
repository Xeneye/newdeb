#!/bin/bash

## sources change
echo "Changing to Sid"	
echo "##----------------------------------------------------------------------------##
#                          OFFICIAL DEBIAN REPOS (SID)                         #
##----------------------------------------------------------------------------##

###### Debian Main Repos
deb http://deb.debian.org/debian/ sid main contrib non-free
deb-src http://deb.debian.org/debian/ sid main contrib non-free" | sudo tee /etc/apt/sources.list
