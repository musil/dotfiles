#!/bin/bash
#rename current
timestamp=`date +%s`;

function backup(){
    echo "Backing up .bashrc to .bashrc.$timestamp";
    mv -f ~/.bashrc ~/.bashrc.$timestamp
    mv -f ~/.selected_editor ~/.selected_editor.$timestamp
    mv -f ~/.config/powershell/profile.ps1 ~/.config/powershell/profile.ps1.$timestamp
}

function copy(){
    echo "Copying .bashrc to ~";
    cp -f ./linux/bashrc ~/.bashrc
    cp -f ./linux/.selected_editor ~/.selected_editor
    cp -f ./powershell/profile.ps1 ~/.config/powershell/profile.ps1
}

backup
copy

echo "All done!"
