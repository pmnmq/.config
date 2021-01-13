apt install -y wget git gcc cmake
apt install -y neovim ranger htop neofetch figlet
curl -sL install-node.now.sh/lts | bash
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -zxvf Python-3.6.6.tgz -C /usr/local/python36
ln -s /usr/local/python36/bin/pip3.6 /usr/bin/pip36
pip36 install virtualenvwrapper
pip3 install neovim
mkdir ~/.zinit
git clone --depth=1 https://github.com/zdharma/zinit.git ~/.zinit/bin

