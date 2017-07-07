#!/usr/local/bin/zsh

# @author Wells Johnston <w@wellsjohnston.com>

# Shorthand
alias l="ls -lha"
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# git
alias gc="git commit -m $1"
alias ga="git add -p"
alias gs="git status"
alias gb="git branch"
alias gp="git push"
alias gd="git diff"
alias gl="git log"
alias lastcommit="git diff HEAD^ HEAD"

# tmux
alias t="tmux -2"
alias ta="tmux -2 attach"

alias code="cd ~/code"
alias szsh="source ~/.zshrc"
alias stmux="tmux source-file ~/.tmux.conf"
alias ezsh="vim ~/.zshrc"
alias etmux="vim ~/.tmux.conf"
alias evim="vim ~/.vimrc"
alias fm="mv .git/hooks/pre-push .git/hooks/pree-push"
alias ufm="mv .git/hooks/pree-push .git/hooks/pre-push"
