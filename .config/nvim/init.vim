__   _(_)_ __ ___  _ __ ___
\ \ / | | '_ ` _ \| '__/ __|
 \ V /| | | | | | | | | (__
  \_/ |_|_| |_| |_|_|  \___|

" Plugins - Vim-Plug {{{
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'vimwiki/vimwiki'
call plug#end()
" }}}

" Built-in Options {{{
let mapleader=","

set nobackup
set noswapfile

set dir=~/.cache/vim
set backupdir=~/.cache/vim
set history=1000

set title
set ruler
set number
set relativenumber
set foldmethod=marker

set tabstop=4
set softtabstop=0
set shiftwidth=4
" }}}

" Key Remapping {{{
nnoremap <C-c> "+y
map <C-v> "+p
" }}}

" VimWiki Settings {{{
let g:vimwiki_list = [{'path': '~/VimWiki', 'syntax': 'markdown', 'ext': '.md'}]
" }}}

