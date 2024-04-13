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

# scripts deployment
echo "Installing ~/bin scripts";
cp -f ./bin/* ~/bin/
chmod +x ~/bin/*

echo "Installation complete";
