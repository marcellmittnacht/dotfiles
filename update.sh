#!/bin/bash

cp -r ~/.config/nvim .
cp -r ~/.config/kitty .

git add .
git commit -m "dotfiles update"
git push
