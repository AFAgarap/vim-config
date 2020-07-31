set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'Vimjas/vim-python-pep8-indent'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapActivateNode='v'
autocmd BufWinEnter * NERDTreeMirror
