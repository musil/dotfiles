#!/bin/zsh
# zshrc
timestamp=`date +%s`;
if [ ! -d ~/.zsrc ]; then
    echo "Backing up .zshrc to .zshrc.$timestamp";
    mv -f ~/.zshrc ~/.zshrc.$timestamp
    echo "Installing zshrc";
    cp -f ./zsh/zshrc ~/.zshrc
  fi

mkdir -p ~/bin

# git-init script deployment
echo "Installing git-init script";
cp -f ./git/git-init ~/bin/git-init
chmod +x ~/bin/git-init

echo "Installation complete";
