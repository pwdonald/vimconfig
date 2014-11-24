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

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>

map <leader>pj :%!python -m json.tool<CR>
map <leader>px :%!xmllint % --format<CR>

