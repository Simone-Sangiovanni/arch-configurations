#!/bin/bash

filename="packages.txt"
GREEN="\033[0;32m"
RED="\033[0;31m"
NORMAL="\033[0m"

packages=()
while IFS= read -r line; do
	packages+=($line)
done < "$filename"

print "Installing packages...\n"
pacman -Sqy --noconfirm "${packages[@]}" 2> /dev/null

if [ $? -eq 0 ]; then
	print "${GREEN} Packages installed successfully ${NORMAL}\n"
else
	print "${RED} Error while installing packages ${NORMAL}\n"
fi