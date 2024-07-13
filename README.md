<h1 align="center">
 Arch Essentials
</h1>

### This script aims to install terminal programs which should be WITH the distro itself.
### And is really handy & instant.
 

<h2 align="left">
  # Requirements 
</h2>

 - Arch Linux (pacman)
 - Git

<h2 align="left"> # If you have minimal Arch:</h2>

```sh
git clone https://github.com/PSGitHubUser1/Arch-Essentials 
cd Arch-Essentials
bash ae.sh
bash cc.sh
```
 
<h4 align="left">  Copy & paste this command in your terminal: </h4>

```sh
cd ~/Desktop &&
git clone https://github.com/PSGitHubUser1/Arch-Essentials &&
cd Arch-Essentials &&
rm -f LICENSE &&
rm -f README.md &&
cp ae.sh ~/Desktop/ &&
cp cc.sh ~/Desktop/ &&
cd .. &&
yes | rm -rf Arch-Essentials &&
chmod +x ae.sh && chmod +x cc.sh &&
./ae.sh || bash ae.sh &&
./cc.sh || bash cc.sh
```
<h2 align="left">  # This file installs: </h2>

 - Flatpak
 - Ranger
 - Fzf
 - Yay (AUR)
 - Dust
 - OS-Prober & Update-Grub (AUR)
 - Ramfetch (AUR too I guess)
 - Nano
 - Python 
 - Java (JDK 17)
 - Curl
 - Wget
 - Tldr
 - Neofetch
 - Htop
 - Git

### Note: There is a cc.sh file too, its cleans the cache left by Yay & Pacman

# Made by me, [@PSGitHubUser1](https://github.com/PSGitHubUser1)
### This should not be distributed or published after modifications.
