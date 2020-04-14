"---------------------
" Basic editing config
"---------------------
"set shortmess+=I " disable startup message
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
"map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/


nmap <space> <leader><leader><leader>j
vmap <space> <leader><leader><leader>j
nmap <leader>w :w!<cr>

map <silent> <leader><cr> :noh<cr>
