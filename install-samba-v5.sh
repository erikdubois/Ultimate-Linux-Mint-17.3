#!/bin/bash -x
############################################################################
# Version 	:	3
# Date 		:	17-05-2015
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
# conky and all its components are installed via an other script
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/linux/install-conky-theme-aurora
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

#Starting SMB/CIFS File and Active Directory Server boot log FAIL - For all the non Active-Directory Users aka at home
echo manual | sudo tee /etc/init/samba-ad-dc.override


# samba is normally installed but not system-config-samba
# in essence this is not needed
# you can do without - it is just a program to keep track which folders you shared with who
sudo apt-get install system-config-samba samba -y
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo smbpasswd -a erik
sudo service smbd restart
