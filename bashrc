#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ccat='fades -d Pygments -x pygmentize'
alias ll='ls -la'
export BROWSER=firefox
export PATH=$PATH:~/.local/bin
export EDITOR=vim
PS1='[\u@\h \W]\$ '
/usr/bin/synclient TapButton1=1 TapButton2=3 TapButton3=2

# Extract shortcuts #####################################

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

##########################################################

# navigation
alias ..='cd ..' 
alias ...='cd ../..'

# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# broot
alias br='br -dhp'
alias bs='br --sizes'

# the terminal rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# devour windows
#alias mpv="devour mpv"
#alias sxiv="devour sxiv"
#alias zathura="devour zathura"

alias commit="git commit -a"
alias push="git push"
alias status="git status"
alias addall="git add ."

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

/usr/bin/pfetch

source /home/nncanepa/.config/broot/launcher/bash/br
