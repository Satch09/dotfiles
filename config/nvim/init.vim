version 6.0
source $HOME/.config/nvim/autoload/plugs.vim
let s:cpo_save=&cpo
set cpo&vim
set display+=lastline
set ruler
set incsearch
set number relativenumber
let &cpo=s:cpo_save
unlet s:cpo_save
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
set runtimepath=~/.config/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.5.1/share/nvim/runtime,/usr/local/Cellar/neovim/0.5.1/share/nvim/runtime/pack/dist/opt/matchit,/usr/local/Cellar/neovim/0.5.1/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,~/.config/nvim/after
set window=38
" vim: set ft=vim :
