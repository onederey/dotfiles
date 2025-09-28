#!/bin/sh

#
# Arch + Hyprland
#

sudo -v

packages=( firefox fastfetch kitty telegram-desktop obsidian qbittorrent vlc vim git keepassxc less dotnet-sdk base-devel brightnessctl waybar hyprpaper otf-font-awesome hyprlock stow hypridle python-pywal ttf-jetbrains-mono ttf-jetbrains-mono-nerd pavucontrol blueman ) 

echo  "Listed packages will be installed:"
echo  "	-> ${packages[@]}"

sudo pacman --noconfirm --needed -S "${packages[@]}"

echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf ./yay

aur=( visual-studio-code-bin amneziavpn-bin python-pywalfox wlogout )

yay -Sy "${aur[@]}"
