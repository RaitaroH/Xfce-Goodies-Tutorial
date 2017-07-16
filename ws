#!/bin/bash
desktop_dir="/home/raresh/.cinnamon/backgrounds/" # full path to "username"'s image folder;
declare -a images=(1.png 2.png)

setdesktop() {
	#gsettings set org.gnome.desktop.background picture-uri "file://$desktop_dir$1"
	
	#For Plasma5 thanls to https://store.kde.org/p/1169583/
	qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript 'var allDesktops = desktops();print (allDesktops);for (i=0;i<allDesktops.length;i++) {d = allDesktops[i];d.wallpaperPlugin = "org.kde.image";d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");d.writeConfig("Image", "$desktop_dir$1")}'
return
}

setdesktop $1
