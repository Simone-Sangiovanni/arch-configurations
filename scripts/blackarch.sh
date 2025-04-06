#!/bin/bash

# check the installation script
cmd=$(echo bbf0a0b838aed0ec05fff2d375dd17591cbdf8aa strap.sh | sha1sum -c)
GREEN="\033[0;32m"
RED="\033[0;31m"
NORMAL="\033[0m"

if [ "$cmd" == "strap.sh: OK" ]; then
	print "Installing blackarch repos...\n"
	chmod +x strap.sh
	./strap.sh
	pacman -Syu
else 
	echo -e "${RED} Error: the SHA1 sum of strap.sh script used to install Blackarch repos is not correct ${NORMAL}"
	echo
	echo "Retry following the instructions at https://www.blackarch.org/downloads.html#install-repo"
fi