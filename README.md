# zsh config
How to make zsh kinda like fish? And awesome.

## Install
1. Installs Oh-My-Zsh and the plugins then configures by symlinking to the files in this repo:
```
./install.sh 
```

## Uninstall
You can uninstall it too:
```
./install.sh remove
```
which just removes the three files. Or you can use: 
```
./install.sh unlink
```
Which removes the symlinks but copies real files in their place so you can delete the repo but keep the config.

## Manual Install
1. Install oh-my-zsh
```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

2. Clone necessary plugins.
```
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

3. Configure by removing real files and changing to symlinks to the files in this repo:
```
./install.sh link
```