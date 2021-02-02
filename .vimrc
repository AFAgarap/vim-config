set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'lambdalisue/fern.vim'
Plugin 'lambdalisue/fern-renderer-nerdfont.vim'
Plugin 'lambdalisue/nerdfont.vim'
Plugin 'lambdalisue/glyph-palette.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'hugolgst/vimsence'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
nnoremap <buffer> <F9> :exec '!clear && python3' shellescape(@%, 1)<cr>

source ~/.vim_runtime/airline.vim
source ~/.vim_runtime/basic.vim
source ~/.vim_runtime/extended.vim
source ~/.vim_runtime/file_types.vim
source ~/.vim_runtime/plugin_config.vim
source ~/.vim_runtime/syntastic.vim
source ~/.vim_runtime/fern.vim

set encoding=UTF-8
set noshowmode
set updatetime=100
let g:gitgutter_enabled = 1
set fillchars=""

let g:dracula_colorterm = 0
colorscheme dracula

let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}
