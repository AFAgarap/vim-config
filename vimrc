set runtimepath+=~/.vim_runtime
set number
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
    source ~/.vim_runtime/my_configs.vim
catch
endtry

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
colorscheme ir_black

set textwidth=79  " lines longer than 79 columns will be broken
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
