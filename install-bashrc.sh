#!/bin/bash
#rename current
timestamp=`date +%s`;

function move(){
mv -f ~/.bashrc ~/.bashrc.$timestamp
}

function copy(){
cp -f ./linux/bashrc ~/.bashrc
}

move &
copy &

echo "All done!"
