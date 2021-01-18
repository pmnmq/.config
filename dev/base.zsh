apt install -y wget gcc cmake screen python3-dev python3-pip
apt install -y neovim ranger htop neofetch figlet
curl -sL install-node.now.sh/lts | bash
# wget -P /usr/src https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
wget -P /usr/src https://studygolang.com/dl/golang/go1.15.6.linux-amd64.tar.gz
tar -xzvf /usr/src/go1.15.6.linux-amd64.tar.gz /usr/local
mkdir -p ~/go/{src,bin,pkg}
# wget -P /usr/src https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
wget -P /usr/src https://mirrors.huaweicloud.com/python/3.6.8/Python-3.6.8.tgz
tar -xf /usr/src/Python-3.6.8.tgz -C /usr/src
cd /usr/src/Python-3.6.8
./configure --prefix=/usr/local/python36
make && make install
ln -s /usr/local/python36/bin/pip3.6 /usr/bin/pip36
ln -s /usr/local/python36/bin/python3.6 /usr/bin/python36
cd
pip36 install virtualenvwrapper
pip3 install neovim
mkdir ~/.zinit
git clone --depth=1 https://github.com/zdharma/zinit.git ~/.zinit/bin
ln -s -f ~/.config/zsh/zshrc .zshrc
ln -s -f ~/.config/tmux/tmxu.conf ~/.tmux.conf
ln -s -f ~/.config/tmux/tmxu.conf.local ~/.tmux.conf.local
ln -s /usr/bin/ranger /usr/bin/ra
ln -s /usr/bin/neofetch /usr/bin/s
ln -s -f ~/.config/zsh/.zsh_history ~/.zsh_history
source ~/.zshrc
