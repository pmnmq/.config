#!/bin/bash
sudo pacman -S zsh git rofi

# clone dotfile
rm -rf $HOME/.config
git clone -depth=1 https://github.com/pujichun/.config $HOME/.config

# clone fzf
git clone --depth=1 https://github.com/junegunn/fzf.git $HOME/.fzf

# clone zi
zi_home="${HOME}/.zi" && mkdir -p $zi_home
git clone --depth=1 https://github.com/z-shell/zi.git "${zi_home}/bin"

# install oh-my-zsh
sh -c "$(curl -fsSL https://gitee.com/pujichun/ohmyzsh/raw/master/install.sh)"

# clone oh-my-zsh theme
curl https://raw.githubusercontent.com/pujichun/nebula/main/nebula.zsh-theme > $HOME/.oh-my-zsh/custom/themes/nebula.zsh-theme

# source ~/.zshrc
rm -rf $HOME/.zshrc $HOME/.zsh_history
ln -sf $HOME/.config/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/.config/zsh/zsh_history $HOME/.zsh_history
source $HOME/.zshrc
