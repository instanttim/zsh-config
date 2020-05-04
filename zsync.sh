#!/bin/zsh

# (2) handle the command line argument we were given
if [ "$1" = 'up' ]
	then
		cp ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme instanttim.zsh-theme
		cp ~/.oh-my-zsh/custom/aliases.zsh aliases.zsh
		cp ~/.zshrc zshrc
elif [ "$1" = 'down' ]
	then
		cp instanttim.zsh-theme ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme
		cp aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
		cp zshrc ~/.zshrc
else
	echo "Please run with 'up' or 'down' argument."
fi
