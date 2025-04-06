# Arch Configurations
Linux configuration

Run

> sudo chmod +x setup.sh

> sudo ./setup.sh

packages.txt contain the list of packages that must be installed.
The scripts folder contains the scripts that are going to be invoked from setup.sh script

### Scripts
- repo.sh add third party repositories and mirrors usefull to install packages 
- blackarch.sh install the blackarch mirrors, so you can have pentesting tools 
- install.sh install the packages listed in packages.txt
- zsh_setup.sh is used to setup my zsh configuration
- sublime_text.sh set my custom configuration for sublime text


### TODO after the scripts finished the execution
- set kitty as default terminal emulator