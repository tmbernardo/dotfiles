" VIM SETTINGS

" VISUAL/GUI SETTINGS
syntax on                       " turns on colorscheme
colorscheme pablo              " change text colorscheme
highlight LineNr ctermfg=darkgrey
set number                      " line numbers
set ruler                       " show cursor position at all times
set lazyredraw

" INDENT SETTINGS
filetype plugin indent on       " auto-indent
set tabstop =4                  " tabstop: Width of tab character
set softtabstop =4              " softtabstop: Fine tunes the amount of white space to be added
set shiftwidth =4               " shiftwidth Determines the amount of whitespace to add in normal mode
set expandtab                   " expandtab: When on uses space instead of tabs
