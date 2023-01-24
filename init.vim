set nu

call plug#begin()

Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'

call plug#end()

set termguicolors
" let ayucolor="light"
" let ayucolor="dark"
let ayucolor="mirage"
colorscheme ayu
