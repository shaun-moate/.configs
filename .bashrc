#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls --color=auto -al'
alias vim='nvim'
alias cfv='nvim ~/.config/nvim/init.vim'
alias config='/usr/bin/git --git-dir=$HOME/.local/.configs --work-tree=$HOME'

# PS1='[\u@\h \W]\$ '
PATH=$PATH:~/.local/bin/

neofetch
