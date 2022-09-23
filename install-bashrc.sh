#!/bin/bash
#rename current
timestamp=`date +%s`;

function backup(){
    echo "Backing up .bashrc to .bashrc.$timestamp";
    mv -f ~/.bashrc ~/.bashrc.$timestamp
}

function copy(){
    echo "Copying .bashrc to ~";
    cp -f ./linux/bashrc ~/.bashrc
}

backup
copy

# zshrc
if [ ! -d ~/.zsrc ]; then
    echo "Backing up .zshrc to .zshrc.$timestamp";
    mv -f ~/.zshrc ~/.zshrc.$timestamp
    echo "Installing zshrc";
    cp -f ./linux/zsrc ~/.zsrc
  fi

echo "All done!"
