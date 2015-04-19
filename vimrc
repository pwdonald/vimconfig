"Load pathgoen"
execute pathogen#infect()

syntax on
filetype plugin indent on

set nocompatible
set backspace=2
set clipboard=unnamed
set encoding=utf-8
set omnifunc=syntaxcomplete#Complete

set nobackup
set noswapfile
set updatecount=0
set ttyfast

set mouse=a
set mousehide

set nowrap
set cursorline
set number

set confirm

"colorscheme setting"
colorscheme jellybeans

:set tabstop=4
:set shiftwidth=4
:set expandtab

map <leader>pj :%!python -m json.tool<CR>
map <leader>px :%!xmllint % --format<CR>

