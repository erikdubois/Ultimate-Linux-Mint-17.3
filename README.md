# Ultimate Linux Mint 17.3 Cinnamon and other flavours and Ubuntu derivatives


![Screenshots](http://i.imgur.com/SXOd0OV.jpg)


![Screenshots](http://i.imgur.com/ioLbDhH.jpg)


![Screenshots](http://i.imgur.com/p62pbGX.jpg)


![Screenshots](http://i.imgur.com/xLqAoVN.jpg)


![Screenshots](http://i.imgur.com/v71AdeK.jpg)


![Screenshots](http://i.imgur.com/2rGABXZ.jpg)


![Screenshots](http://i.imgur.com/MhfJMk6.jpg)




This is my way of working when installing a new operating system.

First upgrade kernel, nvidia and cinnamon/nemo.
If everything is still working we can install the software and start customizing the system.


#1 Kernel, cinnamon and nvidia

As described at http://erikdubois.be/ I try to get the latest of everything. This attitude tends to break things. You have been warned. But the best way to learn about linux.

The first time I suggest you follow the steps in the article.

I have written a script to automate my installations. 

You have a choice. 

	- kernel 3.x
	- kernel 4.x

If you want to install a kernel 3.x or a kernel 4.x, I have to take a different approach for my hardware. Therefor I have split it up in two files.

	- ./update-to-the-last-stable-3.19.8-kernel-vx.sh 
	- ./update-to-the-last-stable-4.3-kernel-vx.sh 

Do not forget to type "./" in front of the name.

You can run any of these scripts by downloading the zip file from github. Go to the download folder and right-click to Extract here.
Go inside the folder and right-click <b>in a blank space</b> to go to the terminal. Now your terminal is opened in this extracted folder.

Type in the terminal

	- ./update-to-the-last-stable-3.19.8-kernel-vx.sh 
	
	or 
	
	- ./update-to-the-last-stable-4.3-kernel-vx.sh 


The very latest cinnamon version will be <b>NOT</b> be installed on your system.
This code can be uncommented and it will be installed.

	# sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
	# sudo apt-get update 
	# sudo apt-get install cinnamon -y

	or run

	- ./install-latest-cinnamon-installation-vx.sh


Nvidia drivers will <b>NOT</b> be installed as they are very specific to your hardware. But checkout the code.
This code can be uncommented.

	# sudo add-apt-repository -y ppa:xorg-edgers/ppa
	# sudo apt-get update
	# sudo apt-get install nvidia-340 -y (for example)

Check on Nvidia.com which driver you should use.

Wait for the installation and reboot.

#2 Software installation

We start the installation script of all the needed software in the same way as above. 

	- ./install-all-needed-software-at-once-vx.sh

Do not forget to type "./" in front of the name.

The best of them 

	Spotify
	Sublime Text
	Variety
	Inkscape
	Plank
	Screenfetch
	Numix Icons
	Google Chrome
	...



[![Ultimate Linux Mint Update](http://i.imgur.com/qmOOZ8G.jpg)](https://www.youtube.com/watch?v=5xHy96K14Dk "Ultimate Linux Mint Update - Click to Watch!")


#3 Extra's


Sardi Icon Theme
-------------------

This icon theme can be downloaded at  sourceforge.

http://sourceforge.net/projects/sardi/

Some Examples!
More documentation on http://erikdubois.be


![Screenshots](http://i.imgur.com/FOm8gfH.png)


![Screenshots](http://i.imgur.com/RwszxLG.png)


![Screenshots](http://i.imgur.com/k0RXBnB.png)


![Screenshots](http://i.imgur.com/l0Ecx5O.png)  


![Screenshots](http://i.imgur.com/pv7bBsW.png)  


![Screenshots](http://i.imgur.com/pNDgmJ7.png)  


![Screenshots](http://i.imgur.com/g6mccId.png)  


![Screenshots](http://i.imgur.com/jtToMq7.png)  


![Screenshots](http://i.imgur.com/s5GY5gG.png)  


![Screenshots](http://i.imgur.com/KlTeQK7.png)  


![Screenshots](http://i.imgur.com/lrQ27Xs.jpg)




Aurora Conky
---------------
	

Aurora is a collection of conky's I like. 

Download it from http://sourceforge.net/projects/auroraconkytheme/.

Installation is described at 

http://erikdubois.be/category/linux/aurora-conky/

In this downloadfolder you will find an installationscript as well i.e. Auto_LinuxMint_Rebecca_cinnamon_aurora.sh


But basically unpack the zip file. Make the hidden folder .conky (if it does not exist yet) and place the folder aurora in there.

Install conky-manager that will make life easy.

	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get update
	sudo apt-get install conky-manager

Start up conky-manager and choose the conky to your liking.



You should arrive at something similar depending on theme and icons choices: 


![Screenshots](http://i.imgur.com/YAyQOjw.jpg)



![Screenshots](http://i.imgur.com/Yyfslr1.jpg)



![Screenshots](http://i.imgur.com/B5cPnMK.jpg)





Then you take the script apart and you write your own code.

This github script is explained more in depth on my website.

http://erikdubois.be/


	

ZSH and Oh-my-sh
-----------------------
I like bash but I prefer zsh with lots of different theme to spice things up. So let us install that in the script

./install-zsh-vx.sh

Normally you need to go and find that hidden file .zshrc (CTRL+H) and edit it. You should change it into ZSH_THEME="random".

<b>Latest script will take care of that automatically.</b>

[![Install zsh](http://i.imgur.com/vcTLjCT.jpg)](https://www.youtube.com/watch?v=5UOkIRhq7h8 "Install zsh - Click to Watch!")

Each time you start an other terminal you will get a different theme. It will surprise you every time.

[![Showing zsh](http://i.imgur.com/gzK6c7j.jpg)](https://www.youtube.com/watch?v=T2Y_dp1STos "Showing zsh - Click to Watch!")


Plank
------------------
Start plank from the menu. Right-click the plank and choose preferences and put in on top. I choose a transparent theme.
But there are more themes out there if you want.
If you want to autostart this everytime.
Type in the menu " startup". Start startup applications.
Add application and choose plank or do it the old way and point to /usr/bin/plank.

![Screenshots](http://i.imgur.com/arie1IY.jpg)

A tutorial has been written here : 

http://erikdubois.be/install-plank-linux-mint-17-3-set-preferences-add-themes-autostart/




Folder nemo-scripts
------------------
Move the content of the folder nemo-scripts to the hidden folder ~/.gnome2/nemo-scripts/
and change to your liking. These are quick fixes and one backup script to a Backup folder.

But if you are using the <b>latest nemo</b> you have to place them in your home folder in 
~/local/share/nemo/scripts. Nemo has an extra menu "Plugins".

Or just follow the youtube movie to get more details about 3 scripts I have kept over the years.

![Screenshots](http://i.imgur.com/ody9WJO.jpg)


[![How to add scripts to nemo](http://i.imgur.com/8lFcYuP.jpg)](https://www.youtube.com/watch?v=JCxxs7IzUbs "How to add scripts to nemo - Click to Watch!")




Themes and Icons
-----------------

The most fun goes in changing the look of your system. 

I have gathered a lot of themes, icons and cursors I like and bundled them here.

https://github.com/erikdubois/themes-icons-pack


![Screenshots](http://erikdubois.be/wp-content/uploads/2015/05/final_linuxmint171.png)



![Screenshots](http://erikdubois.be/wp-content/uploads/2015/02/pimp_linux_mint.jpg)



![Screenshots](http://i.imgur.com/9drRjAL.jpg)



![Screenshots](http://i.imgur.com/FacEzmD.jpg)




Mscore fonts
---------------
If you miss the microsoft fonts ... Verdana, Courrier, Comic, Arial, ...
Use TAB and ENTER to install it.

sudo apt-get install ttf-mscorefonts-installer -y





The matrix
-----------

Matrix (screen with green letters as seen in the movie)

sudo apt-get install cmatrix

Try 

	cmatrix -b

![Screenshots](http://i.imgur.com/oKGiyzP.jpg)




Samba or sharing folder over the network
------------------------------------------

And a specific script for samba (sharing of maps on your home network) if you need it. This script is NOT necessary. Linux Mint shares folders just fine. If you need a program to have an oversight of all the shared maps. This is the one. 

	sudo apt-get install system-config-samba

	or

	- ./install-samba-vx.sh




#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al 

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.
------------------------------------



