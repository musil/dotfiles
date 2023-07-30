#!/bin/bash
#rename current
timestamp=`date +%s`;

function backup(){
    echo "Backing up .bashrc to .bashrc.$timestamp";
    mv -f ~/.bashrc ~/.bashrc.$timestamp
    mv -f ~/.selected_editor ~/.selected_editor.$timestamp
}

function copy(){
    echo "Copying .bashrc to ~";
    cp -f ./linux/bashrc ~/.bashrc
    cp -f ./linux/.selected_editor ~/.selected_editor
}

backup
copy

echo "All done!"
