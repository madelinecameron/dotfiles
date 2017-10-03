# Maddie's Dotfiles

Dotfiles for ZSH and Guake, plus a few tools and functions to make my life a little easier

## Install
Paste this in the terminal. It will clone the repo, source the bash profile, then run an install script.
```bash
(
  git clone git@github.com:madelinecameron/dotfiles.git ~/.dotfiles;
  ./install;
)
```

## Aliases
```shell
# git
aa = add --all
ap = add --patch
gd = diff
grm = rebase master
gra = rebase --abort
grc = rebase --continue
gs = status
gc = commit -m $1
oops = commit -a --amend
# Delete branches that have been merged into master
dm = "!git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d"

# shell
l="ls -lha"
c="clear"
..="cd .."
...="cd ../.."
....="cd ../../.."

code="cd ~/code"
```