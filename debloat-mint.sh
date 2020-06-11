#!/bin/bash


## Remove the bloat
sudo apt purge redshift libreoffice-core libreoffice-common transmission-gtk hexchat baobab seahorse thunderbird rhythmbox pix simple-scan drawing xed gnote xreader onboard gnome-calendar flatpak 

sudo apt autoclean 

##mark packages on hold
sudo apt-mark hold mintreport flatpak

#update and upgrade mint
sudo apt update && sudo apt upgrade