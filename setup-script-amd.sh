#!/bin/bash
set -e

#Fully use CPU for compiling and compressing
wget https://raw.githubusercontent.com/WoofahRayetDev/general-linux-stuff/master/all-cpu-cores-compiling.sh
chmod +x all-cpu-cores-compiling.sh
./all-cpu-cores-compiling.sh

#Command for main programs I use
sudo pacman -S nano wine-staging thunderbird qbittorrent krita bleachbit libreoffice-fresh git steam discord unrar p7zip gparted 

#Command for downloading and setting up Proton Updater
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
chmod +x cproton.sh

#Clone yay and install
mkdir Git
cd Git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#Command for programs I use from the AUR
yay -S lib32-mesa-git mesa-git retroarch-git retroarch-assets-xmb-git pcsx2-git duckstation-git obs-studio-git kdenlive-git minecraft-launcher teamviewer gamemode lib32-gamemode winetricks protontricks foxitreader youtube-dl-git freetube-bin authy timeshift etcher-bin bitwarden-bin webcamoid visual-studio-code-bin github-desktop-bin simplenote-electron-bin

#Commands for cleaning left over files from main program install command and AUR install command.
sudo pacman -Rns $(pacman -Qtdq)
sudo pacman -Scc
yay -Scc

#Simply reboot computer
sudo reboot
