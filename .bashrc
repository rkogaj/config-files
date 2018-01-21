#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> Added by cnchi installer
EDITOR=/usr/bin/vim

# alias
alias emacs='emacs -nw'
alias ls='ls -l --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
