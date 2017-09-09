

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

call plug#end()


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
colorscheme OceanicNext
set ruler
set number

" vim-airline
let g:airline_theme = 'powerlineish'

"" NERDTree configuration
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <C-g> :NERDTreeToggle<CR>
