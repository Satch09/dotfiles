"---------------------
" Basic editing config
"---------------------
set shortmess=at " disable startup message
" number lines
set nu 
" relative line numbering
set rnu	
" show where you are
set ruler 
" incremental search (as string is being typed)
set incsearch 
" highlight search
set hls 
" line break
set lbr	
set ignorecase
" tab completion for files/bufferss
set smartcase 
set wildmode=longest,list
set wildmenu
"set mouse+=a " enable mouse mode (scrolling, selection, etc)
" not vi compatible
set nocompatible 
" yank and paste with the system clipboard
" set clipboard=unnamed
" show a navigable menu for tab completion
set wildmenu	

set expandtab
set hlsearch
set number
set ruler


"------------------
" Syntax and indent
"------------------
" turn on syntax highlighting
syntax on 
" show matching braces when text indicator is over them
set showmatch 


"---------------------
" Custom Maps
"---------------------
imap ii <Esc>l				
map vv <Esc>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
noremap <leader>t2 :tabnext<cr>
noremap <leader>t1 :tabprevious<cr>
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


nmap <space> <leader><leader><leader>j
vmap <space> <leader><leader><leader>j
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

map <silent> <leader><cr> :noh<cr>

" Match closing things

inoremap " ""<left>
inoremap ` ``<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'

call plug#end()

" Airline Plugin"
let g:airline#extensions#tabline#enabled = 1

