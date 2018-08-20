

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
  source ~/.config/nvim/local_bundles.vim
endif

call plug#end()

" Required:
filetype plugin indent on

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

let g:python_host_prog  = '/path/to/python'
let g:python3_host_prog = '/path/to/python3'

"*****************************************************************************"
"" Visual Settings
"*****************************************************************************
syntax on
colorscheme OceanicNext
set ruler
set number
set lazyredraw
set scrolljump=10
" vim-airline
let g:airline_theme = 'powerlineish'

"" NERDTree configuration
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <C-g> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"*****************************************************************************"
"" Remaps
"*****************************************************************************

inoremap <C-s> <esc>:w<cr><esc>
nnoremap <C-s> :w<cr>
