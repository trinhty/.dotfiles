#!/usr/bin/env bash
#

# Detect distribution and set package manager
# if command -v apt >/dev/null 2>&1; then
# 	package_manager="apt install -y"
# elif command -v yum >/dev/null 2>&1; then
# 	package_manager="yum install -y"
# elif command -v pacman >/dev/null 2>&1; then
# 	package_manager="pacman"
# 	opts=(-Sy --noconfirm --needed)
# else
# 	echo "Error: Unhandled distribution"
# 	exit 1
# fi

# Array of packages
# packages=(curl git neovim noto-fonts-emoji ttf-fira-code fzf fd zsh)

# Install Packages
# echo "Installing $package_manager with ${opts[@]} options and ${packages[@]}"
# sudo "$package_manager" "${opts[@]}" "${packages[@]}"
#
# Setup Zsh because Bsh is for scrubs :) 
# echo "Changing shell to zsh"
# chsh -s $(which zsh)
#
# echo "Install Oh My Zsh"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
#
STOW_FOLDERS="alacritty,hypr,nvim,tmux,zsh"
pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
	echo "stow $folder"
	stow -D $folder
	stow $folder
done
popd
