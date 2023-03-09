#!/bin/bash

for theme in \
    $(pacman -Ql fluent-gtk-theme-git | grep -E '/usr/share/themes/[^/$]*/$' | sed -re 's#.*/([^/]*)/$#\1#')
do
    printf "Installing stylepak for '%s'...\n" "$theme"
    stylepak install-system "$theme" &> /dev/null
done
