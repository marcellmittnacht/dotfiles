#!/bin/bash

cp -r ~/.config/nvim .
cp -r ~/.config/i3status .
cp -r ~/.config/i3 .
cp -r ~/.config/picom .
cp -r ~/.config/kitty .

git add .
git commit -m "dotfiles update"
git push
