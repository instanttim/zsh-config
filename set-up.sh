#!/bin/zsh

# (2) handle the command line argument we were given
if [ "$1" = 'install' ]
	then
		sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/set-up.sh -O -)"
		git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
elif [ "$1" = 'remove' ]
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
elif [ "$1" = 'link' ]
	then
		./set-up.sh remove
		echo "Linking zsh-theme, aliases, and zshrc files."
		ln -s $PWD/instanttim.zsh-theme ~/.oh-my-zsh/custom/themes/instanttim.zsh-theme 
		ln -s $PWD/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
		ln -s $PWD/zshrc ~/.zshrc
else
	if [ -z $ZSH ]
		then
			echo "Installing…"
			./set-up.sh prepare
			./set-up.sh link
	else
		echo "REQUIRES: prepare, link, unlink, or remove."
	fi
	
fi
