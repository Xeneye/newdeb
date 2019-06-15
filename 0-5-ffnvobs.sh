#!/bin/bash

echo "------------------------------"
echo "Installing nv-codec headers..."
echo "------------------------------"
sleep 3
clear

sudo apt install -y make git
mkdir ~/devel/ && cd ~/devel/
git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
cd nv-codec-headers
make && sudo make install
clear

echo "------------------"
echo "Building ffmpeg..."
echo "------------------"
sleep 3
clear

sudo apt build-dep ffmpeg
mkdir -p ~/devel/ffmpeg
cd ~/devel/ffmpeg
sudo apt source ffmpeg
sudo chown -hR $USER: * # atleast my distro has problems when unpacking source – so we change ownership
cd ffmpeg-4.1.3 # cd ffmpeg-x.x.x [x.x.x represents the version number] 
debuild -b --no-sign --jobs-try=$((`nproc`/2))
cd ..
rm -f libavcodec-extra* libavfilter-extra*
sudo dpkg -i *.deb
sudo apt-mark hold ffmpeg ffmpeg-doc libavcodec-dev libavcodec58 libavfilter7 libavfilter-dev libavformat58 libavformat-dev libavresample4 libavresample-dev libavutil-dev libavutil56 libavdevice58 libavdevice-dev libswscale5 libswscale-dev libswresample3 libswresample-dev libpostproc55 libpostproc-dev
clear

echo "-----------------------"
echo "Testing installation..."
echo "-----------------------"

ffmpeg -hide_banner -encoders  | grep nvenc
ffmpeg -hide_banner -decoders | grep cuvid
ffmpeg -hide_banner -hwaccels
sleep 3
clear

echo "------------------------"
echo "Installing OBS-Studio..."
echo "------------------------"

sudo apt install -y obs-studio
sleep 3
clear

echo "-------------------------------------------------------------------"
echo "Complete, OBS-Studio should now have hardware encoding available..."
echo "-------------------------------------------------------------------"
sleep 3
clear
