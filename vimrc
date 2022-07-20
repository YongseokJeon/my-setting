" General ----------------------------------------------------
set number
"set relativenumber

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

set title

set runtimepath=~/user/yongseok/.vim,~/user/yongseok/vim/share/vim/vim90/vimfiles,~/user/yongseok/vim/share/vim/vim90,~/user/yongseok/vim/share/vim/vim90/vimfiles/after

" set Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set runtimepath+=~/user/yongseok/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end ----------------------------------------------

" NERDTree --------------------------------------------------
nnoremap <leader>nt :NERDTree<CR>
" NERDTree end ----------------------------------------------


" Syntax Highlighting
if has("syntax")
    syntax on
endif
set et
set bs=2
set nocp

syntax on

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e
" General end ------------------------------------------------

" termguicolor -----------------------------------------------
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" termguicolor end -------------------------------------------

let ayucolor="mirage"
colo ayu

" Statusline -------------------------------------------------
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R              " readonly flag
set statusline+=%M              " modified [+] flag
set statusline+=%#Visual#   " colour
set statusline+=%#CursorLine#   " colour
"set statusline+=\ %t\           " short file name
set statusline+=\ %F\           " full file path
set statusline+=%=              " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\           " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l/%L:%-2c\     " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\        " percentage

" set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F
" set statusline+=\ \ %{Tlist_Get_Tagname_By_Line()}()

set laststatus=2    " 상태바 표시 항상
" Statusline end ---------------------------------------------

" Other settings ----------------------------------------------
:com -range C <line1>, <line2> w! ~/user/yongseok/.tmp/vim_tmp
:com -range CC <line1>, <line2> w! >> ~/user/yongseok/.tmp/vim_tmp
:com -nargs=0 R r ~/user/yongseok/.tmp/vim_tmp
