"  
"
"   __  __        __     _____ __  __ ____   ____ 
"  |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
"  | |\/| | | | |  \ \ / / | || |\/| | |_) | |    
"  | |  | | |_| |   \ V /  | || |  | |  _ <| |___ 
"  |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"          |___/                                  
"  
"
"
"  shortcuts:
"     
"    ctrl + o and ctrl + i
"    ctrl + a
"    ciw and ci"
"


set nocompatible

set nu
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set encoding=utf-8

syntax on
set autochdir "vim命令位置在当前文件夹下
set hlsearch
set scrolloff=15
"set list " 显示行尾

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map H 5h
map J 5j
map K 5k
map L 5l

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" automatic parentheses completion
imap ''' ''<Left>
imap """ ""<Left>
imap ()) ()<Left>
imap []] []<Left>
imap <>> <><Left>
imap {}} {}<Left><CR><ESC>O


set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set cindent
set smartindent
set autoindent


set background=dark
set mouse=a




noremap <F9> <F1>

map <F2> <ESC>gT<CR>
map <F3> <ESC>gt<CR>
map <F4> <ESC>:tabc<CR>


map <F5> :call ComplieRun()<CR>
func! ComplieRun()
    exec "w"
    if &filetype == 'c'
        exec '!gcc -lcurses *.[ch] && ./a.out'
    else
        exec '!cargo run'
    endif
endfunc



"  
"  __     ___                 ____  _             
"  \ \   / (_)_ __ ___       |  _ \| |_   _  __ _ 
"   \ \ / /| | '_ ` _ \ _____| |_) | | | | |/ _` |
"    \ V / | | | | | | |_____|  __/| | |_| | (_| |
"     \_/  |_|_| |_| |_|     |_|   |_|\__,_|\__, |
"                                           |___/ 
"  
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" :PlusgInstall
" :PlugUpdate
" :PlugStatus
"
filetype plugin indent on


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'       " python3 install.py

call plug#end()


map <F1> :NERDTreeToggle<CR>















    
