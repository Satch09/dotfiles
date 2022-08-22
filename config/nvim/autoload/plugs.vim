" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'valloric/youcompleteme'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mattn/emmet-vim'
    Plug 'w0rp/ale'
    Plug 'sheerun/vim-polyglot'

call plug#end()

" Throws vim.lsp module not found
require 'lspconfig'
