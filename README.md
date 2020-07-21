# vim-config

Install vimrc for single user.

```buildoutcfg
$ git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
$ sh ~/.vim_runtime/install_awesome_vimrc.sh
```

Install vim-irblack

Go to bundle directory to clone the vim-irblack repo.

```buildoutcfg
$ mkdir -p ~/.vim/bundle
$ cd ~/.vim/bundle
$ git clone https://github.com/wesgibbs/vim-irblack
```

The `colorscheme ir_black` configuration is added to `~/.vimrc`

Install NERDTree

```buildoutcfg
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
```

Replace `~/.vimrc` with the `vimrc` file.

Install PEP8 linter for Vim.

```buildoutcfg
$ pip3 install flake8
```
