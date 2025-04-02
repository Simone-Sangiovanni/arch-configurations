#!/bin/bash

# set the default shell to zsh
chsh -S $(which zsh)
sudo chsh -S $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


