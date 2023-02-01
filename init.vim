set nu

set smartindent
set autoindent
set cindent

set tabstop=2
set shiftwidth=2
set expandtab
set ruler

set hlsearch
set incsearch
set cursorline

call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim'

call plug#end()

set termguicolors
" let ayucolor="light"
" let ayucolor="dark"
let ayucolor="mirage"
colorscheme ayu

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>
