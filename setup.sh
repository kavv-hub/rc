#!/bin/bash

# copy config
cp config/ssh ~/.ssh/config
cp -r fish ~/.config/fish
cp -r nvim ~/.config/nvim

# download tools
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

