#!/bin/bash

command_exists () {
    type "$1" > /dev/null 2>&1 ;
}

echo $(command -v pip >/dev/null 2>&1)
if ! command_exists python ; then
  apt-get install python3
fi

if ! command_exists pip ; then
  curl https://bootstrap.pypa.io/get-pip.py
  python get-pip.py
fi

pip install pre-commit

# Add template dir for git hooks if missing
if [ ! -f ~/.git-templates ]; then
  mkdir -p ~/.git-templates/hooks
  git config --global init.templatedir ~/.git-templates
fi

cp $HOME/.dotfiles/coding/post-checkout  ~/.git-templates/hooks/post-checkout
cp $HOME/.dotfiles/coding/pre-push  ~/.git-templates/hooks/pre-push
cp $HOME/.dotfiles/coding/commit-msg ~/.git-templates/hooks/commit-msg
cp $HOME/.dotfiles/coding/validate-commit.py ~/.git-templates/hooks/validate-commit.py

chmod a+x ~/.git-templates/hooks/post-checkout
chmod a+x ~/.git-templates/hooks/pre-push
chmod a+x ~/.git-templates/hooks/commit-msg
chmod a+x ~/.git-templates/hooks/validate-commit.py

# Create .gitignore if it is missing
if [[ -z "$(git config --get core.excludesfile)" ]]; then
  git config --global core.excludesfile "${HOME}/.gitignore"
  touch ~/.gitignore
fi

GITIGNORE_FILE=$(git config --get core.excludesfile)

echo '.pre-commit-config.yaml' > "$GITIGNORE_FILE"

# Only push to current branch
git config --global push.default current

sudo apt-get install git-extras

cp ./eslintrc.json ~/.eslintrc.json
