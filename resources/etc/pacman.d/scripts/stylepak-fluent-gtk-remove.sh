#!/bin/bash

for theme in \
    $(pacman -Ql fluent-gtk-theme-git | grep -E '/usr/share/themes/[^/$]*/$' | sed -re 's#.*/([^/]*)/$#\1#')
do
    printf "Removing stylepak theme for '%s'...\n" "$theme"
    flatpak --system uninstall -y org.gtk.Gtk3theme."$theme" &> /dev/null
done
