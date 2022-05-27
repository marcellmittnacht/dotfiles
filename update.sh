#!/bin/bash

cp -r ~/.config/nvim .

git add .
git commit -m "dotfiles update"
git push
