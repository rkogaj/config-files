# solus specific
source /usr/share/defaults/etc/profile

EDITOR="emacs -nw"

# aliases
alias ls='ls -lh --color=auto'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias edit='emacs -nw'
alias emacs='emacs -nw'

#pacman alias arch-based specific
alias pcmin='sudo pacman -S'
alias pcmsr='pacman -Ss'
alias pcmrs='sudo pacman -Sy archlinux-keyring manjaro-keyring'
alias pcmlu='pacman -Qu'
alias pcmup='sudo pacman -Syu'

# powerline
# solus specific
# source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fedora
# if [ -f `which powerline-daemon` ]; then
#   powerline-daemon -q
#   POWERLINE_BASH_CONTINUATION=1
#   POWERLINE_BASH_SELECT=1
#   . /usr/share/powerline/bash/powerline.sh
# fi
