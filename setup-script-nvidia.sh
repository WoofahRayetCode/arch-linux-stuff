#!/bin/bash
set -e

#Fully use CPU for compiling and compressing
wget https://raw.githubusercontent.com/WoofahRayetDev/general-linux-stuff/master/all-cpu-cores-compiling.sh
chmod +x all-cpu-cores-compiling.sh
./all-cpu-cores-compiling.sh

#Command for downloading and setting up Proton Updater
wget https://raw.githubusercontent.com/Termuellinator/ProtonUpdater/master/cproton.sh
chmod +x cproton.sh

#Main programs I use
sudo pacman -S base-devel git nvidia nvidia-utils lib32-nvidia-utils unrar p7zip gamemode lib32-gamemode steam wine-staging lutris thunderbird qbittorrent discord telegram-desktop krita libreoffice-fresh obs-studio vlc bleachbit gnome-system-monitor

cd
mkdir Git
cd Git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

#AUR Programs I use
yay -S pamac-aur birdtray-git retroarch-git retroarch-assets-git protontricks-git winetricks-git mellowplayer-git duckstation-git pcsx2-64bit-git rpcs3-git ppsspp-git vbam-git desmume-git citra-git minecraft-launcher foxitreader shotcut-git etcher-bin dxvk-bin minetime-bin standardnotes-bin visual-studio-code-bin github-desktop-bin

#Install DXVK
setup_dxvk install

#Widevine for MellowPlayer
curl -s "https://gitlab.com/ColinDuquesnoy/MellowPlayer/-/raw/master/scripts/install-widevine.sh" | bash

#Nvidia CUDA Detection
nvidia-modprobe

#Simply reboot computer
sudo reboot
