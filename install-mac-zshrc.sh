#!/bin/zsh
# zshrc
timestamp=`date +%s`;
if [ ! -d ~/.zsrc ]; then
    echo "Backing up .zshrc to .zshrc.$timestamp";
    mv -f ~/.zshrc ~/.zshrc.$timestamp
    echo "Installing zshrc";
    cp -f ./zsh/zshrc ~/.zshrc
    echo "backup Powershell pfrofile to .config/powershell/profile.ps1.$timestamp";
    mv -f ~/.config/powershell/profile.ps1 ~/.config/powershell/profile.ps1.$timestamp
  fi

mkdir -p ~/bin

# scripts deployment
echo "Installing ~/bin scripts";
cp -f ./bin/* ~/bin/
chmod +x ~/bin/*
echo "Installing Powershell profile";
cp -f ./powershell/profile.ps1 ~/.config/powershell/profile.ps1

echo "Installation complete";
