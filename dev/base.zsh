apt install -y wget git gcc cmake screen python3-dev python3-pip
apt install -y neovim ranger htop neofetch figlet
curl -sL install-node.now.sh/lts | bash
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -zxvf Python-3.6.8.tgz -C /usr/local/python36
ln -s /usr/local/python36/bin/pip3.6 /usr/bin/pip36
/usr/bin/pip36 install virtualenvwrapper
pip3 install neovim
mkdir ~/.zinit
git clone --depth=1 https://github.com/zdharma/zinit.git ~/.zinit/bin
ln -s -f ~/.config/zsh/zshrc .zshrc
ln -s -f ~/.config/tmux/tmxu.conf ~/.tmux.conf
ln -s -f ~/.config/tmux/tmxu.conf.local ~/.tmux.conf.local
ln -s /usr/bin/ranger /usr/bin/ra
ln -s /usr/bin/neofetch /usr/bin/s
ln -s -f ~/.config/zsh/.zsh_history ~/.zsh_history
