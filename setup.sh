#!/bin/bash

echo "Cloning vim configuration..."
git clone https://github.com/afagarap/vim-config ~/vim-config
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

echo "Installing vimrc..."
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "Installing vim-irblack..."
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/wesgibbs/vim-irblack

echo "Installing NERDTree..."
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing flake8..."
sudo pip3 install flake8

echo "Finalizing vim configuration setup..."
cp ~/vim-config/vimrc ~/.vimrc

echo "Cleaning up..."
rm -rf ~/vim-config
