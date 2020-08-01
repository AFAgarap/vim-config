#!/bin/bash

echo "Cloning vim configuration..."
git clone https://github.com/afagarap/vim-config ~/vim-config

echo "Installing Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing flake8..."
sudo pip3 install flake8

echo "Finalizing vim configuration setup..."
cp ~/vim-config/vimrc ~/.vimrc

echo "Cleaning up..."
rm -rf ~/vim-config
