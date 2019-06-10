#!/bin/bash

EDITOR=vim
TZ=America/New_York
LANG=en_US.UTF-8
HISTFILE="${HOME}/.history"
HISTSIZE=10000

# Auto-enable colors for commands like 'ls'
CLICOLOR=1

# Vim key bindings
set -o vi

export EDITOR TZ LANG HISTFILE HISTSIZE CLICOLOR

# liquid prompt
[[ $- = *i* ]] && source ${HOME}/.dotfiles/bash/liquidprompt/liquidprompt

# Start ssh-agent, load ssh keys
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

use_color=true

# Update path
export PATH=$HOME/usr/local/sbin:$PATH
export PATH=$HOME/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.dotfiles/ssh/connect

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias l="ls -lha"
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias code="cd ~/code"

alias wifi="nmcli dev wifi"

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Package management
alias update="sudo apt-get -qq update && sudo apt-get upgrade"
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias search="apt-cache search"

alias pbcopy='xclip -i -selection clipboard'
alias pbpaste='xclip -o -selection clipboard'

alias du='du -h'
alias connect='sudo nmcli dev wifi con "https://qnzl.co" password 6366998620 "phone"'
alias mkdir='mkdir -p'
alias wget='wget -e robots=off --no-check-certificate --referer="http://www.google.com" --user-agent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.6) Gecko/20070725 Firefox/2.0.0.6" --header="Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5" --header="Accept-Language: en-us,en;q=0.5" --header="Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" --header="Keep-Alive: 300"'
