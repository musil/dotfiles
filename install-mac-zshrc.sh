#!/bin/zsh
# zshrc
timestamp=`date +%s`;
if [ ! -d ~/.zsrc ]; then
    echo "Backing up .zshrc to .zshrc.$timestamp";
    mv -f ~/.zshrc ~/.zshrc.$timestamp
    echo "Installing zshrc";
    cp -f ./mac/zshrc ~/.zshrc
  fi

mkdir -p ~/bin

# git-init script deployment
cp -f ./mac/git-init ~/bin/git-init
chmod +x ~/bin/git-init
