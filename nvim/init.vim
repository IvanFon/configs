call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'

" Theme
Plug 'joshdick/onedark.vim'

call plug#end()

filetype plugin indent on

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

" Centre cursor
set scrolloff=25

" Buffers
" New buffer
nmap bn :enew<CR>
" Next buffer
nmap bt :bnext<CR>
" Previous buffer
nmap bT :bprevious<CR>
" Close buffer
nmap bd :bd<CR>
" List buffers
nmap bl :ls<CR>

" Tabs
" New tab
nmap gn :tabnew<CR>
" Close tab
nmap gd :tabclose<CR>
nmap <Leader>of :!firefox-developer %<CR>

" Theme
syntax on
colorscheme onedark

" Airline
let g:airline#extensions#tabline#enabled=1
set laststatus=2
let g:airline_powerline_fonts=1

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

" CtrlP
map <C-P> :CtrlP<CR>
" Ignores
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" deoplete
call deoplete#enable()
" Tab for autocomplete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Tagbar
nmap <Leader>t :TagbarToggle<CR>

" lexima
let g:lexima_enable_newline_rules=1

" ALE
let g:ale_cpp_clang_options="-std=c++14 -Wc++11-extensions"


