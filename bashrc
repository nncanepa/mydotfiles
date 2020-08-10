#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ccat='fades -d Pygments -x pygmentize'
alias ll='ls -la'
export PATH=$PATH:~/.local/bin
PS1='[\u@\h \W]\$ '
/usr/bin/synclient TapButton1=1 TapButton2=3 TapButton3=2

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

/usr/bin/pfetch
