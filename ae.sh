#!/bin/sh



clear
echo 
echo  Info:  Press Ctrl+C to exit '(Provides exit signal to script)'
echo 
echo  "Script will start in (10)."
sleep 1
echo  "Script will start in (9).."
sleep 1
echo  "Script will start in (8)..."
sleep 1
echo  "Script will start in (7)...."
sleep 1
echo  "Script will start in (6)....."
sleep 1
echo  "Script will start in (5)."
sleep 1
echo  "Info: EXIT NOW IF YOU WANT!!! YOU CAN'T EXIT AFTER  (1)"
sleep 5
echo  "Script will start in (4).."
sleep 1
echo  "Script will start in (3)..."
sleep 1
echo  "Script will start in (2).... "
sleep 1
echo  "Script will start in (1)....."
sleep 1


 
echo ==================================================================
sudo pacman -Syu || sudo yay -Syu
echo ==================================================================
echo 
echo  Installing Neofetch
echo 
echo ==================================================================
yes | sudo pacman -Sy neofetch
echo ==================================================================
echo 
echo  Installing Ranger
echo 
echo ==================================================================
yes | sudo pacman -Sy ranger
echo ==================================================================
echo 
echo  Installing Fzf
echo 
echo ==================================================================
yes | sudo pacman -Sy fzf
echo ==================================================================
echo 
echo  Installing Tldr
echo 
echo ==================================================================
yes | sudo pacman -Sy tldr
echo ==================================================================
#echo 
#echo Installing Dust [If supported]
#echo 
#sudo snap install dust
#echo ==================================================================
echo 
echo  Installing Htop
echo 
echo ==================================================================
yes | sudo pacman -Sy htop
echo ==================================================================
#echo 
#echo Installing Grub Customizer 
#echo 
#echo Adding repo. [Grub Customizer]
#echo 
#sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
#echo ==================================================================
#echo 
#sudo apt install grub-customizer
#echo ==================================================================
echo 
echo  Installing Yay [AUR manager]
echo
echo ==================================================================
cd ~
sudo git clone https://aur.archlinux.org/yay.git
cd yay
sudo makepkg -si
echo ==================================================================
echo
echo  Installing Ramfetch
echo
yes | sudo yay -Sy ramfetch
echo ==================================================================
echo 
#echo Updating packages...
#sudo apt update
#echo ===================================================================
echo  Installing Flatpak
echo
yes | sudo pacman -Sy flatpak
echo 
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo 
#echo Installing Software [Its like MS Store but for Debian/Linux]
#echo 
#sudo apt install gnome-software-plugin-flatpak
echo ==================================================================
echo 
echo Installing Nano 
echo 
yes | sudo pacman -Sy nano
echo ==================================================================
echo 
echo Installing Python 
echo 
yes | sudo pacman -Sy python python3
echo ==================================================================
echo
echo Installing Java [JDK 17]
echo
yes | sudo pacman -Sy jdk17-openjdk
echo ===============================================================
echo 
echo Installing Git
echo 
yes | sudo pacman -Sy git
echo ==================================================================
echo 
echo Installing Curl and Wget
echo 
yes | sudo pacman -Sy curl wget
#echo ==================================================================
#echo
#echo Installing Cpufetch
#echo
#sudo pacman -Sy make cmake
#cd ~
#git clone https://github.com/Dr-Noob/cpufetch
#cd cpufetch
#make
#./cpufetch
echo 
echo ==================================================================
#echo 
#echo Donwloading eDex-UI [x64 Bit, AppImage]
#echo 
#cd $HOME/Desktop
#curl -L https://github.com/GitSquared/edex-ui/releases/download/v2.2.8/eDEX-UI-Linux-x86_64.AppImage -o edex.AppImage
#echo 
#chmod u+x edex.AppImage
#sudo add-apt-repository ppa:appimagelauncher-team/stable
#sudo apt update
#sudo apt install appimagelauncher
#echo ==================================================================
echo 
echo ==================================================================
echo
echo
neofetch
echo 
ramfetch
echo 
#reboot
