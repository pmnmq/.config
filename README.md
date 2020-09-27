# 这是我的配置文件

下面是各个文件说明

## neofetch

- neofetch中的[config.conf](./neofetch/config.conf)是neofetch的配置文件，该配置文件能控制终端中使用neofetch后输出信息

## notebook

- notebook中的[custom.css](./notebook/custom.css)放置的是jupyter notebook启动后在WebUI中的样式配置，这个文件需要拷贝或者链接到`site-package/notebook/static/custom`文件夹下

## nvim

- nvim中的[init.vim](./nvim/init.vim)是nvim的配置文件

- [autoload](./nvim/autoload)是vim-plug(vim插件管理器)执行文件放置的位置

- [coc-setting.json](./nvim/coc-settings.json)是coc语法补全插件中关于各种语言补全的配置文件，我这里只有Go和Python

- [UltiSnips](./nvim/UltiSnips)文件夹中放置的是我添加的ultisnips(vim代码片段插件)代码片段

## tmxu

- 这个文件夹中放置的是tmxu的懒人配置

	```bash
	ln -s -f ~/.config/tmux/tmxu.conf ~/.tmux.conf
	ln -s -f ~/.config/tmux/tmxu.conf.local ~/.tmux.conf.local
	```

## zsh

- [zshrc](./zsh/zshrc)拷贝或者复制到用户目录下为隐藏文件，或者直接链接过去，但是需要注意要将文件的第一行`export ZSH="/root/.oh-my-zsh"`中的用户改为当前用户

	```bash
	ln -s -f ~/.config/zsh/zshrc ~/.zshrc
	```
- [env.zsh](./zsh/env.zsh)中配置信息为我的软件的环境变量

## ranger

- [rc.conf](./ranger/rc.conf)是ranger的配置文件
