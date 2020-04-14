"---------------------
" Basic editing config
"---------------------
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set lbr " line break
set ignorecase
set smartcase " tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
"set mouse+=a " enable mouse mode (scrolling, selection, etc)
set nocompatible " not vi compatible

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them


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
"map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


nmap <space> <leader><leader><leader>j
vmap <space> <leader><leader><leader>j
nmap <leader>w :w!<cr>

map <silent> <leader><cr> :noh<cr>
