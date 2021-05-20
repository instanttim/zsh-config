#!/bin/zsh

# (2) handle the command line argument we were given
if [ "$1" = 'remove' ]
	then
		echo "Removing zsh-theme, aliases, and zshrc files."
		rm ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme
		rm ~/.oh-my-zsh/custom/aliases.zsh
		rm ~/.zshrc
elif [ "$1" = 'unlink' ]
	then
		cp $PWD/instanttim.zsh-theme ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme 
		cp $PWD/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
		cp $PWD/zshrc ~/.zshrc	
else
	./install.sh remove
	echo "Linking zsh-theme, aliases, and zshrc files."
	ln -s $PWD/instanttim.zsh-theme ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme 
	ln -s $PWD/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
	ln -s $PWD/zshrc ~/.zshrc
fi
