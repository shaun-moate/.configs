#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ | | | | | | (__
# |_.__/ \__,_|___|_| |_|_|  \___|
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind '"\C-o":"open_fzf\n"'
bind '"\C-f":"cd_fzf\n"'
bind '"\C-i":"pacman_fzf\n"'
bind '"\C-y":"yay_fzf\n"'

alias ll='ls --color=auto -alh'
alias vw='nvim ~/VimWiki/index.md'
alias vim='nvim'
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfb='nvim ~/.bashrc'
alias cfg='/usr/bin/git --git-dir=$HOME/.local/.configs --work-tree=$HOME'

PS1='[\u@\h \W]\$ '
PATH=$PATH:~/.local/bin/

cd_fzf() {
	cd "$(find ~ -type d | fzf --preview="tree -L 1 {}" --bind "space:toggle-preview" --preview-window=:hidden)" && pwd && tree -L 1
}
pacman_fzf() {
	sudo pacman -Syy $(pacman -Ssq | fzf -m --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
}
yay_fzf() {
	yay -Syy $(yay -Ssq | fzf -m --preview="yay -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
}
open_fzf() {
	find ~ -type f | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
}

neofetch
