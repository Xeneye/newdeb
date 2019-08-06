!/bin/bash
#   $$\   $$\                                                 
#   $$ |  $$ |                                                 
#   \$$\ $$  |$$$$$$\  $$$$$$$\   $$$$$$\  $$\   $$\  $$$$$$\  
#    \$$$$  /$$  __$$\ $$  __$$\ $$  __$$\ $$ |  $$ |$$  __$$\ 
#    $$  $$< $$$$$$$$ |$$ |  $$ |$$$$$$$$ |$$ |  $$ |$$$$$$$$ |
#   $$  /\$$\$$   ____|$$ |  $$ |$$   ____|$$ |  $$ |$$   ____|
#   $$ /  $$ \$$$$$$$\ $$ |  $$ |\$$$$$$$\ \$$$$$$$ |\$$$$$$$\ 
#   \__|  \__|\_______|\__|  \__| \_______| \____$$ | \_______|
#                                          $$\   $$ |  
#                                          \$$$$$$  |                              
#                                           \______/                               
#Install Plexamp
echo "Installing Plexamp"
sudo wget https://plexamp.plex.tv/plexamp.plex.tv/plexamp-1.1.0-x86_64.AppImage
sudo chmod +x plexamp-1.1.0-x86_64.AppImage
sudo cp plexamp-1.1.0-x86_64.AppImage /usr/bin/plexamp
sudo rm plexamp-1.1.0-x86_64.AppImage
sleep 1.5
clear
