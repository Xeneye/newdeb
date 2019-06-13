#!/bin/bash

## sources change
echo "Changing to Testing"	
echo "##----------------------------------------------------------------------------##
#                        OFFICIAL DEBIAN REPOS (TESTING)                       #
##----------------------------------------------------------------------------##

###### Debian Main Repos
deb http://deb.debian.org/debian/ testing main contrib non-free
deb-src http://deb.debian.org/debian/ testing main contrib non-free

deb http://deb.debian.org/debian/ testing-updates main contrib non-free
deb-src http://deb.debian.org/debian/ testing-updates main contrib non-free

deb http://deb.debian.org/debian-security testing/updates main
deb-src http://deb.debian.org/debian-security testing/updates main" | sudo tee /etc/apt/sources.list
