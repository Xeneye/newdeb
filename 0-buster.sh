#!/bin/bash

## sources change
echo "Changing to Buster"	
echo "##----------------------------------------------------------------------------##
#                        OFFICIAL DEBIAN REPOS (BUSTER)                        #
##----------------------------------------------------------------------------##

###### Debian Main Repos
deb http://deb.debian.org/debian/ buster main contrib non-free
deb-src http://deb.debian.org/debian/ buster main contrib non-free

deb http://deb.debian.org/debian/ buster-updates main contrib non-free
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free

deb http://deb.debian.org/debian-security buster/updates main
deb-src http://deb.debian.org/debian-security buster/updates main" | sudo tee /etc/apt/sources.list
