#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###############
##  MY STUFF ##
###############
# cmd | pb for usual, pb < file for jpg etc.
alias pb="curl -F c=@- https://ptpb.pw"
alias dpaste='curl -s -F "content=<-" http://dpaste.com/api/v2/'
alias spm="sudo pacman"
alias pm="pacman"
export RANGER_LOAD_DEFAULT_RC=FALSE
export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${PATH}:$HOME/bin"
export HISTCONTROL=ignoredups
HISTSIZE=500000
HISTFILESIZE=500000
export LESS='-R '
# coloured man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;36m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;40;31m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;35m") \
    man "$@"
}
# colored list
eval $(dircolors -b $HOME/.dircolors)
alias l='ls -al --color=auto'
# History search
alias grep='grep --color=auto'
# Use vim for less command.
#alias less=$PAGER
export PS1='\[\033[0m\]┌─[\[\033[00;36m\]\u\[\033[0;33m\]@\[\033[0;36m\]\h\[\033[0m\]] - [\[\033[1;37m\]\w\[\033[0m\]] - [\[\033[0;33m\]\t\[\033[0m\]]
\[\033[0m\]└─[\[\033[0;33m\]\$\[\033[0m\]] \[\033[00m\]'
