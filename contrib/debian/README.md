
Debian
====================
This directory contains files used to package sford/sfor-qt
for Debian-based Linux systems. If you compile sford/sfor-qt yourself, there are some useful files here.

## sfor: URI support ##


sfor-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install sfor-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your sfor-qt binary to `/usr/bin`
and the `../../share/pixmaps/sfor128.png` to `/usr/share/pixmaps`

sfor-qt.protocol (KDE)

