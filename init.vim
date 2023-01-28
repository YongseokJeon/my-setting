set nu

call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

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
