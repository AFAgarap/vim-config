git clone https://github.com/afagarap/vim-config ~/vim-config
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/wesgibbs/vim-irblack
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
sudo pip3 install flake8
cp ~/vim-config/vimrc ~/.vimrc
rm -rf ~/vim-config
