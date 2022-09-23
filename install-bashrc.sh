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

echo "All done!"
