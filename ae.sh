#!/bin/sh


#clear
#echo 
#echo  Info:  Press Ctrl+C to exit '(Provides exit signal to script)'
#echo 
#echo  "Script will start in (10)."
#sleep 1
#echo  "Script will start in (9).."
#sleep 1
#echo  "Script will start in (8)..."
#sleep 1
#echo  "Script will start in (7)...."
#sleep 1
#echo  "Script will start in (6)....."
#sleep 1
#echo  "Script will start in (5)."
#sleep 1
#echo  "Info: EXIT NOW IF YOU WANT!!! YOU CAN'T EXIT AFTER  (1)"
#sleep 5
#echo  "Script will start in (4).."
#sleep 1
#echo  "Script will start in (3)..."
#sleep 1
#echo  "Script will start in (2).... "
#sleep 1
#echo  "Script will start in (1)....."
#sleep 1

display_menu() {
    echo "Please select the driver to install:"
    echo 
    echo 
    echo "1) Install Intel microcode (intel-ucode)"
    echo 
    echo "2) Install AMD microcode (amd-ucode)"
    echo 
    echo "3) Install NVIDIA drivers (nvidia)"
    echo 
    echo "4) Install VirtualBox Guest Additions (virtualbox-guest-utils)"
    echo 
    echo "5) Install Broadcom wireless drivers (broadcom-wl)"
    echo 
    echo "6) Exit (Run other commands)"
    echo 
}

# Function to install the selected package
install_package() {
    package=$1
    echo "Installing $package..."
    sudo pacman -S --noconfirm $package
}

# Main loop
while true; do
    display_menu
    read -p "Enter your choice [1-6]: " choice

    case $choice in
        1)
            install_package "intel-ucode"
            ;;
        2)
            install_package "amd-ucode"
            ;;
        3)
            install_package "nvidia"
            ;;
        4)
            install_package "virtualbox-guest-utils"
            ;;
        5)
            install_package "broadcom-wl"
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
echo 
echo 

 
echo ================================================================================================================================================================
sudo pacman -Syu || sudo yay -Syu
echo ================================================================================================================================================================
echo 
echo  Installing Neofetch
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy neofetch
echo ================================================================================================================================================================
echo 
echo  Installing Ranger
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy ranger
echo ================================================================================================================================================================
echo 
echo  Installing Fzf
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy fzf
echo ================================================================================================================================================================
echo 
echo  Installing Tldr
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy tldr
echo ================================================================================================================================================================
#echo 
#echo Installing Dust [If supported]
#echo 
#sudo snap install dust
#echo ==================================================================
echo 
echo  Installing Htop
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy htop
echo ================================================================================================================================================================
echo 
echo  Installing Yay [AUR manager]
echo 
echo ================================================================================================================================================================
cd ~
sudo git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo ================================================================================================================================================================
echo 
echo  Installing Dust 
echo 
echo ================================================================================================================================================================
yes | sudo yay -Sy dust 
echo ================================================================================================================================================================
echo 
echo  Installing Grub Customizer
echo 
echo ================================================================================================================================================================
yes | sudo yay -Sy grub-customizer
echo ================================================================================================================================================================
echo 
echo  Installing OS-Prober, Update-Grub '(For Dual Boot)'
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg
yes | yay -Sy update-grub
#update-grub
echo ================================================================================================================================================================
echo 
echo  Installing Ramfetch
echo 
echo ================================================================================================================================================================
yes | sudo yay -Sy ramfetch
echo ================================================================================================================================================================
echo 
echo  Installing Flatpak
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy flatpak
echo ================================================================================================================================================================
echo 
echo Installing Nano 
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy nano
echo ================================================================================================================================================================
echo 
echo Installing Important tools 
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy bluez blueman bluez-utils modprobe btusb unzip tar dpkg p7zip unrar exfat-utils fuse-exfat ntfs-3g flac jasper aria2 pacman-contrib
echo 
sudo systemctl enable bluetooth && systemctl start bluetooth
sudo systemctl enable paccache.timer
sudo systemctl start paccache.timer
echo ================================================================================================================================================================
echo 
echo Installing Python 
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy python python3
echo ================================================================================================================================================================
echo
echo Installing Java '(JDK 17)'
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy jdk17-openjdk
echo ================================================================================================================================================================
echo 
echo Installing Git
echo 
echo ================================================================================================================================================================
yes | sudo pacman -Sy git
echo ================================================================================================================================================================
echo 
echo Installing Curl and Wget
echo 
echo ================================================================================================================================================================
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
echo ================================================================================================================================================================

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
echo 
echo "Script completed."
#reboot
