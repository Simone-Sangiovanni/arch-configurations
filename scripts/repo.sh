#!/bin/bash

print "Set repos and mirrors...\n"

# SUBLIME TEXT
# install the GPG key
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
# use the repository of the stable version
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# BLACKARCH
# download the installation script
curl -O https://blackarch.org/strap.sh
# add blackarch mirrors to the mirror list
cat << EOF >> /etc/pacman.d/mirrorlist
## Blackarch
## Italy
Server = http://blackarch.mirror.garr.it/mirrors/blackarch/
Server = rsync://blackarch.mirror.garr.it/blackarch/

## Australia
Server = http://au.mirrors.cicku.me/blackarch/
Server = https://au.mirrors.cicku.me/blackarch/
Server = http://blackarch.mirror.digitalpacific.com.au/
Server = rsync://mirror.digitalpacific.com.au/blackarch/

## USA
Server = https://us.mirrors.fossho.st/blackarch/
Server = http://mirror.math.princeton.edu/pub/blackarch/
Server = https://mirror.math.princeton.edu/pub/blackarch/
Server = rsync://mirror.math.princeton.edu/pub/blackarch/
EOF