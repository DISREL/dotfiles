#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T" # add timestamp to history

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND="history -a"

# set up XDG folders
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Set the default editor
export EDITOR=nano
export VISUAL=nano
alias snano='sudo nano'

# To have colors for ls and all grep commands such as grep, egrep and zgrep
export CLICOLOR=1
export LS_COLORS="di=33:ln=36:so=30;43:pi=36;43:ex=31:bd=35;47:cd=35;47:su=34;47:sg=34;47:tw=30;45:ow=30;45"

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[0;35m\]\u@\h\[\033[0;33m\] \w\[\033[00m\]: '

alias free="free -m"
alias update="sudo pacman -Sy"
alias install="sudo pacman -S"
alias upgrade="sudo pacman -Syu"
alias remove="sudo pacman -R"
alias search="pacman -Ss"

eval "$(starship init bash)"
