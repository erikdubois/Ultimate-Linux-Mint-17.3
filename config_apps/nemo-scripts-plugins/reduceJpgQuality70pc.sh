#/!/bin/bash

# Save in Linux Mint Nemo filemanager at  
# ~/.local/share/nemo/scripts

# Check imagemagick dependancy is installed
if [$(which convert)=""];then
    sudo apt install -y imagemagick > /dev/null
fi

mkdir ./compressed

for f in *.JPG; do convert "$f" -quality 70 compressed/"$f"; done 

for f in *.jpg; do convert "$f" -quality 70 compressed/"$f"; done 
