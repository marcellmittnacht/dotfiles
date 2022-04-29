#!/bin/bash

cp -r ~/.config/nvim .
cp -r ~/.config/alacritty .

git add .
git commit -m "dotfiles update"
git push
