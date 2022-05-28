#!/bin/bash

cp -r ~/.config/nvim .
cp -r ~/.config/alacritty .
cp -r ~/.config/i3 .
cp -r ~/.config/i3status .
cp -r ~/.config/picom .
cp ~/.tmux.conf .

git add .
git commit -m "dotfiles update"
git push
