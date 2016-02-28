#!/bin/bash

# Read README.md before running this.

echo "Getting a sudo ticket.. Read README.md before running this."
sudo echo "Done.."

echo "Installing dependencies."

curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; ./install.sh
source ~/.bashrc

echo "Installing protobuf."
sudo yum install -y protobuf-compiler protobuf-devel
luarocks install loadcaffe

echo "Downloading neural-style."
git clone https://github.com/jcjohnson/neural-style ~/neural-style
cd ~/neural-style 

echo "Downloading VGG models."
sh models/download_models.sh

echo "Downloading style and content images."
wget https://upload.wikimedia.org/wikipedia/en/c/cc/The_Hallucinogenic_Toreador.png
wget http://i.imgur.com/INeMA1K.png

echo "Running image processing job."
th neural_style.lua -style_image The_Hallucinogenic_Toreador.png  -content_image INeMA1K.png
