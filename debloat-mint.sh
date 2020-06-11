#!/bin/bash


## Remove the bloat
sudo apt purge redshift 
sudo apt purge libreoffice-core
sudo apt purge libreoffice-common
sudo apt purge transmission-gtk
sudo apt purge hexchat
sudo apt purge baobab
sudo apt purge seahorse
sudo apt purge thunderbird
sudo apt purge rhythmbox
sudo apt purge pix
sudo apt purge simple-scan
sudo apt purge drawing
sudo apt purge xed
sudo apt purge gnote
sudo apt purge xreader
sudo apt purge onboard
sudo apt purge gnome-calendar
sudo apt purge flatpak 
sudo apt purge gnome-calculator
sudo apt purge mintstick
sudo apt purge celluloid
sudo apt purge timeshift
sudo apt purge gnome-logs
sudo apt purge gnome-power-manager
sudo apt purge onboard

sudo apt autoremove && sudo apt clean

##mark packages on hold
sudo apt-mark hold mintreport flatpak

#update and upgrade mint
sudo apt update && sudo apt upgrade