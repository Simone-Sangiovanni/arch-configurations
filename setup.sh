#!/bin/bash

cd scripts

chmod +x blackarch.sh install.sh repo.sh sublime_text.sh zsh_setup.sh

./repo.sh
./blackarch.sh
./install.sh
./zsh_setup.sh 
./sublime_text.sh