#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias nv='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="
\[\e[30;44m\] \u \[\e[0m\]\[\e[30;47m\] $\[\e[0m\]\[\e[30;47m\] \w \[\e[0m\] > " 

