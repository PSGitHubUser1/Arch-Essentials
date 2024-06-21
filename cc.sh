#!/bin/sh

clear

yes | yay -Sc
yes | sudo pacman -Rnss $(pacman -Qtdq)
yes | sudo pacman -Scc
