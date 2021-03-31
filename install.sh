#!/bin/zsh

# (2) handle the command line argument we were given
if [ "$1" = 'remove' ]
	then
		rm ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme
		rm ~/.oh-my-zsh/custom/aliases.zsh
		rm ~/.zshrc
else
	ln -s $PWD/instanttim.zsh-theme ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme 
	ln -s $PWD/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
	ln -s $PWD/zshrc ~/.zshrc
fi
