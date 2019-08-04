#!/bin/bash

sudo dpkg --add-architecture i386

## sources tweaks
echo "Adding sources tweaks"	
echo "########################################################################################################################                                                                                                                                                                                                                 
#XXXXXXX       XXXXXXX                                                                                                  #
#X:::::X       X:::::X                                                                                                  #
#X:::::X       X:::::X                                                                                                  #
#X::::::X     X::::::X                                                                                                  #
#XXX:::::X   X:::::XXX    eeeeeeeeeeee    nnnn  nnnnnnnn        eeeeeeeeeeee  yyyyyyy           yyyyyyy eeeeeeeeeeee    #
#   X:::::X X:::::X     ee::::::::::::ee  n:::nn::::::::nn    ee::::::::::::ee y:::::y         y:::::yee::::::::::::ee  #
#    X:::::X:::::X     e::::::eeeee:::::een::::::::::::::nn  e::::::eeeee:::::eey:::::y       y:::::ye::::::eeeee:::::ee#
#     X:::::::::X     e::::::e     e:::::enn:::::::::::::::ne::::::e     e:::::e y:::::y     y:::::ye::::::e     e:::::e#
#     X:::::::::X     e:::::::eeeee::::::e  n:::::nnnn:::::ne:::::::eeeee::::::e  y:::::y   y:::::y e:::::::eeeee::::::e#
#    X:::::X:::::X    e:::::::::::::::::e   n::::n    n::::ne:::::::::::::::::e    y:::::y y:::::y  e:::::::::::::::::e #
#   X:::::X X:::::X   e::::::eeeeeeeeeee    n::::n    n::::ne::::::eeeeeeeeeee      y:::::y:::::y   e::::::eeeeeeeeeee  #
#XXX:::::X   X:::::XXXe:::::::e             n::::n    n::::ne:::::::e                y:::::::::y    e:::::::e           #
#X::::::X     X::::::Xe::::::::e            n::::n    n::::ne::::::::e                y:::::::y     e::::::::e          #
#X:::::X       X:::::X e::::::::eeeeeeee    n::::n    n::::n e::::::::eeeeeeee         y:::::y       e::::::::eeeeeeee  #
#X:::::X       X:::::X  ee:::::::::::::e    n::::n    n::::n  ee:::::::::::::e        y:::::y         ee:::::::::::::e  #
#XXXXXXX       XXXXXXX    eeeeeeeeeeeeee    nnnnnn    nnnnnn    eeeeeeeeeeeeee       y:::::y            eeeeeeeeeeeeee  #
#                                                                                   y:::::y                             #
#                                                                                  y:::::y                              #
#                                                                                 y:::::y                               #
#                                                                                y:::::y                                #
#                                                                               yyyyyyy                                 #
#########################################################################################################################                                                                                                                       
                                                                                                                     
deb http://deb.debian.org/debian/ buster main non-free contrib
deb-src http://deb.debian.org/debian/ buster main non-free contrib

deb http://security.debian.org/debian-security buster/updates main non-free contrib
deb-src http://security.debian.org/debian-security buster/updates main non-free contrib

deb http://deb.debian.org/debian/ buster-updates main non-free contrib
deb-src http://deb.debian.org/debian/ buster-updates main non-free contrib

deb http://deb.debian.org/debian/ buster-backports main non-free contrib
deb-src http://deb.debian.org/debian/ buster-backports main non-free contrib
" | sudo tee /etc/apt/sources.list

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
clear

echo "-----------------"
echo "Rebooting Shortly"
echo "-----------------"
sleep 5
sudo reboot

#These to be be added if updating to testing/sid
#sudo apt install -y apt-listbugs apt-listchanges
#sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
