#!/bin/bash

zenity --question --text="Do you want to debloat your system?" --no-wrap
if [ $? = 0 ]; then


	## Remove the bloat
	sudo apt purge -y redshift \
		libreoffice-core \
		libreoffice-commontransmission-gtk \
		hexchat \
		baobab \
		seahorse \
		thunderbird \
		rhythmbox \
		pix \
		simple-scan \
		drawing \
		xed \
		gnote \
		xreader \
		onboard \
		gnome-calendar \
		gnome-calculator \
		celluloid \
		gnome-logs \
		gnome-power-manager \
		onboard

	sudo apt autoremove -y && sudo apt clean -y
else
	exit
fi

zenity --question --text "Do you want flatpak and to mark it on hold?" --no-wrap
if [ $? = 0 ]; then

	##mark packages on hold
	sudo apt purge -y flatpak
	sudo apt-mark hold flatpak
else
	exit
fi


zenity --question --text "Would you like to update your system?" --no-wrap
if [ $? = 0 ]; then

	#update and upgrade mint
	sudo apt update -y && sudo apt upgrade -y

else
	exit
fi

exit
