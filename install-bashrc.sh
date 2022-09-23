#!/bin/bash
#rename current
timestamp=`date +%s`;

function move(){
    echo "Backing up .bashrc to .bashrc.$timestamp";
    mv -f ~/.bashrc ~/.bashrc.$timestamp
}

function copy(){
    echo "Copying .bashrc to ~";
 
cp -f ./linux/bashrc ~/.bashrc
}

move
copy

# Bootstrap oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  mkdir -p ~/.oh-my-zsh/custom/plugins/eddiezane
  mkdir -p ~/.oh-my-zsh/custom/themes
fi

echo "All done!"
