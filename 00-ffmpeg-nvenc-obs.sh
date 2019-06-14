

sudo apt install make git
mkdir ~/devel/ && cd ~/devel/
git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
cd nv-codec-headers
make && sudo make install
clear
