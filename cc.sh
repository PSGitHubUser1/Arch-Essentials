#!/bin/sh

clear

yes | sudo pacman -Rnss $(pacman -Qtdq)
yes | sudo pacman -Scc
