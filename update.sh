#!/bin/bash

cp -r ~/.config/kitty .
cp -r ~/.config/i3 .
cp -r ~/.config/i3status .
cp -r ~/.config/picom .
cp -r ~/.config/rofi .
cp ~/.vimrc .

git add .
git commit -m "dotfiles update"
git push
