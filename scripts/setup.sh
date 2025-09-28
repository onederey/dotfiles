#!/bin/bash

#
# Use: append to ~/.bashrc line:
# > source ~/Scripts/setup.sh
#

alias hyprlandconf='vim ~/.config/hypr/hyprland.conf'
alias zzz='shutdown -h now'

if [ -f "$HOME/.cache/wal/colors.sh" ]; then
  . "$HOME/.cache/wal/colors.sh"
fi
