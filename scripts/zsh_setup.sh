#!/bin/bash

# set the default shell to zsh
print "Set zsh as default shell...\n"
chsh -S $(which zsh)
sudo chsh -S $(which zsh)

# install oh-my-zsh
print "Install zsh theme...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cat ../zsh-setup.zshrc > ~/.zshrc
rm -r ~/.oh-my-zsh
cp -r ../zsh-setup/.oh-my-zsh ~/.oh-my-zsh