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
# http://erikdubois.be/
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


# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt-get install -y grub-customizer


############################################################################

#ending

sudo apt-get -y update
sudo apt-get -f -y install
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean