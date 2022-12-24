#!/bin/bash

# "echo -e" allows to use escape characters
echo -e "Check current Ubuntu version"
lsb_release -a && echo -e "\n"

# "apt -y" set default answer to yes
echo -e "Update and upgrade outdated packages"
sudo apt -y update && sudo apt -y upgrade && echo -e "\n"

# install default packages
packages="zsh git vim tmux neovim net-tools "
packages+="fzf fd-find bat ripgrep exa ranger neofetch"

echo -e "Install packages in a dry-run: $packages"
sudo apt --dry-run install $packages && echo -e "\n"

read -p "Do you want to continue? [Y/n]" yn
case $yn in
	[yY][eE][sS]|[yY])
		sudo apt -y install $packages && echo -e "\n";;
	*) exit;;
esac
