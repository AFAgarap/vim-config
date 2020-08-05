set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

source ~/.vim_runtime/airline.vim
source ~/.vim_runtime/basic.vim
source ~/.vim_runtime/extended.vim
source ~/.vim_runtime/file_types.vim
source ~/.vim_runtime/plugin_config.vim
source ~/.vim_runtime/syntastic.vim
source ~/.vim_runtime/nerdtree.vim

set noshowmode
set updatetime=100
let g:gitgutter_enabled = 1
