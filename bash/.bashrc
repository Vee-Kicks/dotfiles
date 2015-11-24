#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###############
##  MY STUFF ##
###############
# History size
HISTSIZE=50000
HISTFILESIZE=50000
# EDITOR
export VISUAL=vim
export EDITOR="$VISUAL"

# Add colour and number to grep output
alias grep='grep -n --color=auto'

# Add colour to ls output
alias ls='ls --color=auto'
eval $(dircolors -b)

# Use vim for less command.
alias less=$PAGER

# Colour for stdout and less
export LESS='-R'
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"

#PS1='[\u@\h \W]\$ '
export PS1='\[\033[00;36m\]\u@\h \[\033[00;33m\]\W \$ \[\033[00m\]'
# Some pastebins
alias dpaste='curl -s -F "content=<-" http://dpaste.com/api/v2/'
# cmd | pb for usual, pb < file for jpg etc.
alias pb="curl -F c=@- https://ptpb.pw"
