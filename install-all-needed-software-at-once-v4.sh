#!/bin/bash 
############################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# More from Erik Dubois
# conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
############################################################################
# the option -y has been added. It will autoinstall all. Omit if you do not want that.
############################################################################
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
############################################################################



############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
############################################################################

echo Let us check if your computer is up-to-date
echo
echo 
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y


############################################################################


# repo for grub-customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
# repo for spotify
sudo add-apt-repository "deb http://repository.spotify.com stable non-free" -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886
# repo for variety wallpaper
sudo add-apt-repository ppa:peterlevi/ppa -y
# repo for latest sublime-text
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
# repo for latest vlc
sudo add-apt-repository ppa:videolan/stable-daily -y
# repo for skype
# sudo add-apt-repository "deb http://archive.canonical.com/ubuntu utopic partner"
# repo for copy.com
sudo add-apt-repository ppa:paolorotolo/copy -y
# repo for java 
# sudo add-apt-repository ppa:webupd8team/java -y
# repo for plank
sudo add-apt-repository ppa:ricotz/docky -y
# open as administrator
sudo add-apt-repository ppa:noobslab/apps -y
# repo for numix themes
sudo add-apt-repository ppa:numix/ppa -y
# repo for screenfetch
sudo add-apt-repository ppa:djcj/screenfetch -y
# repo for geary
sudo add-apt-repository ppa:yorba/ppa -y


############################################################################


# after all these new repo's - getting new info
sudo apt-get -y update


############################################################################


#Linux Mint 17.3 Specific
#sudo apt-get install -y libnss-myhostname nemo-dropbox


############################################################################

# donwloading and installing google chrome for netflix e.g.
# echo downloading google chrome latest stable edition
echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y libcurl3
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

############################################################################

#software from 'normal' repositories
sudo apt-get install -y catfish clementine curl focuswriter frei0r-plugins geary gimp git gpick glances gparted
sudo apt-get install -y hardinfo inkscape inxi kazam openshot p7zip-full ppa-purge screenruler scrot shutter slurm
sudo apt-get install -y sublime-text terminator thunar variety vnstat winbind   

#software out of selection
#agave #skype

############################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

############################################################################

#software from extra repositories
sudo apt-get install -y browser-plugin-vlc copy grub-customizer plank screenfetch vlc
sudo apt-get install -y spotify-client
#sudo apt-get install oracle-java8-installer -y
#sudo apt-get install oracle-java7-installer
#sudo apt-get install oracle-java6-installer
#software out of selection
#adobe-flashplugin

############################################################################

#themes
sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y 

############################################################################

#ending
mkdir $HOME/Upload
sudo apt-get -y update
sudo apt-get -f -y install
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

