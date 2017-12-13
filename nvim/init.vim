call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

" Theme
Plug 'joshdick/onedark.vim'

call plug#end()

" Map leader to space
let mapleader=" "

" Hybrid line numbers
set number
set relativenumber
" Wrap lines at words
set wrap
set linebreak
set showbreak=+++
" Visual bell
set visualbell
" Highlight matching braces
set showmatch

" Highlight all search results
set hlsearch
" Smart case-sensitive search
set smartcase
" Search for strings incrementally
set incsearch

" Indent
set autoindent
" Indent with two spaces
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2

" Show row and column info
set ruler
" Undo level
set undolevels=1000
" Backspace behaviour
set backspace=indent,eol,start

" Theme
syntax on
colorscheme onedark

" Airline
let g:airline#extensions#tabline#enabled=1

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" CtrlP
map <C-P> :CtrlP<CR>

