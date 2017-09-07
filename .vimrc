" VIM SETTINGS

" VISUAL/GUI SETTINGS
syntax on                                               " turns on colorscheme
colorscheme pablo                                       " change text colorscheme
highlight LineNr ctermfg=darkgrey
set number                                              " line numbers
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
set ruler                                               " show cursor position at all times
set lazyredraw

" INDENT SETTINGS
filetype plugin indent on       " auto-indent
set tabstop =4                  " tabstop: Width of tab character
set softtabstop =4              " softtabstop: Fine tunes the amount of white space to be added
set shiftwidth =4               " shiftwidth Determines the amount of whitespace to add in normal mode
set expandtab                   " expandtab: When on uses space instead of tabs

" PLUGINS
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-g> :NERDTreeToggle<CR>
