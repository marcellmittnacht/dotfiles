#!/bin/bash

cp -r ~/.config/alacrity .
cp -r ~/.config/nvim .

git add .
git commit -m "config update"
git push
