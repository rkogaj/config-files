# solus specific
source /usr/share/defaults/etc/profile

EDITOR=/usr/bin/vim

# aliases
alias ls='ls -l --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# powerline
# solus specific
source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fedora
# if [ -f `which powerline-daemon` ]; then
#   powerline-daemon -q
#   POWERLINE_BASH_CONTINUATION=1
#   POWERLINE_BASH_SELECT=1
#   . /usr/share/powerline/bash/powerline.sh
# fi
