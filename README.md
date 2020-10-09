# 这是我的配置文件

除了`notebook`中的文件需要软连接或者直接拷贝到对应目录，只需要将zshrc链接到～/.zshrc，然后source即可

下面是各个文件说明

## alacritty

- alacritty中的[alacritty.yml](./alacritty/alacritty.yml)是alacritty的配置文件

## neofetch

- neofetch中的[config.conf](./neofetch/config.conf)是neofetch的配置文件，该配置文件能控制终端中使用neofetch后输出信息

## notebook

- notebook中的[custom.css](./notebook/custom.css)放置的是jupyter notebook启动后在WebUI中的样式配置，这个文件需要拷贝或者链接到`site-package/notebook/static/custom`文件夹下

## nvim

- nvim中的[init.vim](./nvim/init.vim)是nvim的配置文件

- [autoload](./nvim/autoload)是vim-plug(vim插件管理器)执行文件放置的位置

- [coc-setting.json](./nvim/coc-settings.json)是coc语法补全插件中关于各种语言补全的配置文件，我这里只有Go和Python

- [UltiSnips](./nvim/UltiSnips)文件夹中放置的是我添加的ultisnips(vim代码片段插件)代码片段

## tmux

- 这个文件夹中放置的是tmux的配置


## zsh

- [zshrc](./zsh/zshrc)拷贝或者复制到用户目录下为隐藏文件，或者直接链接过去，但是需要注意要将文件的第一行`export ZSH="/root/.oh-my-zsh"`中的用户改为当前用户

	```bash
	ln -s -f ~/.config/zsh/zshrc ~/.zshrc
	```
- [env.zsh](./zsh/env.zsh)中配置的是我的软件环境变量，只需要`source` .zshrc即可

- [plugins.zsh](./zsh/plugins.zsh)中是zsh的插件

- [ln.zsh](./zsh/ln.zsh)中是需要软链接到外部的文件，其中有的是映射程序启动方式，这个因人而异

## ranger

- [rc.conf](./ranger/rc.conf)是ranger的配置文件
