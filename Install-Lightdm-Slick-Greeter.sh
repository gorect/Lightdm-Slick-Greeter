!#/bin/bash

##########################################################################################
## A custom script for setting up the lightdm slick greeter. Works for Arcolinux 21.01.
##########################################################################################

git clone https://github.com/gorect/Lightdm-Slick-Greeter.git

##########################################################################################
## Packages needed for this to work.
##########################################################################################

git clone https://github.com/gorect/Lightdm-Slick-Greeter.git
sudo pacman -S lightdm arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settingsm
yay -S lightdm-settings lightdm-slick-greeter

##########################################################################################
## Move custom wallpapper to /usr/bin/wallpappers dir to replace the black wallpaper.
##########################################################################################

cp Wallpaper.jpg /usr/share/backgrounds/arcolinux/Wallpaper.jpg

##########################################################################################
## Updated lightdm.conf file with the correct settings set for lightdm
##########################################################################################

cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.backup
cp ./lightdm.conf /etc/lightdm/lightdm.conf

##########################################################################################
## Custom slick-greeter file for lightdm.conf to look at. (Based on the default gtk conf
##########################################################################################

cp ./slick-greeter.conf /etc/lightdm/slick-greeter.conf

##########################################################################################
## Launch Lightdm-Settings
##########################################################################################

sudo systemctl enable lightdm.service
sudo lightdm-settings

##########################################################################################