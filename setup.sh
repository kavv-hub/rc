#!/bin/bash

brew install gnupg
brew install pinentry-mac

brew install fish
brew install neovim

# copy config
cp config/ssh ~/.ssh/config
cp -r fish ~/.config/fish
cp -r nvim ~/.config/nvim
cp -r zsh ~/

# download tools
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

base16-monokai

