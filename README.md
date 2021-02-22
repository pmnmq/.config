# 这是我的配置文件

除了`notebook`中的文件需要软连接或者直接拷贝到对应目录，只需要将zshrc链接到～/.zshrc，然后source即可


## alacritty

- [alacritty.yml](./alacritty/alacritty.yml)是alacritty的配置文件

- [dracula.yml](./alacritty/dracula.yml)是alacritty的主题

## background

- [wallpapers.sh](./background/wallpapers.sh)桌面壁纸每过10分钟自动切换的脚本，文件中的`$HOME/picture`是壁纸所在文件夹

## neofetch

- neofetch中的[config.conf](./neofetch/config.conf)是neofetch的配置文件，该配置文件能控制终端中使用neofetch后输出信息

## notebook

- notebook中的[custom.css](./notebook/custom.css)放置的是jupyter notebook启动后在WebUI中的样式配置，这个文件需要拷贝或者链接到Python的`site-package/notebook/static/custom`文件夹下

## nvim

- nvim中的[init.vim](./nvim/init.vim)是nvim的配置文件

- [autoload](./nvim/autoload)是vim-plug(vim插件管理器)执行文件放置的位置

- [coc-setting.json](./nvim/coc-settings.json)是coc语法补全插件中关于各种语言补全的配置文件，我这里只有Go和Python

- [UltiSnips](./nvim/UltiSnips)文件夹中放置的是我添加的ultisnips(vim代码片段插件)代码片段

## zsh

- [zshrc](./zsh/zshrc)拷贝或者复制到用户目录下为隐藏文件，或者直接链接过去，但是需要注意要将文件的第一行`export ZSH="/root/.oh-my-zsh"`中的用户改为当前用户

	```bash
	ln -s -f ~/.config/zsh/zshrc ~/.zshrc
	```

- [env.zsh](./zsh/env.zsh)中配置的是我的软件环境变量，只需要`source` .zshrc即可

- [plugins.zsh](./zsh/plugins.zsh)中是zsh的插件，需要使用[zinit](https://github.com/zdharma/zinit)

```bash
mkdir ~/.zinit
git clone https://github.com/zdharma/zinit.git ~/.zinit/bin
```
- [aliases.zsh](./zsh/aliases.zsh)是我定义的一些快速指令

- [install.sh](./zsh/install.sh)是`oh-my-zsh`的安装脚本

- [vi.zsh](./zsh/vi.zsh)是zsh的vi模式的配置脚本

- [magicmace.zsh](./zsh/magicmace.zsh)这是一个主题配置文件

## ranger

- [rc.conf](./ranger/rc.conf)是ranger的配置文件

## pip

[pip.conf](./pip/pip.conf)是pip的源，我使用的是清华大学的镜像

## [screenshot.sh](./screenshot.sh)

截屏脚本，是用的是`flameshot`软件

## [keymap](./keymap)

这是我的键位配置，将Esc键和Caps键进行了交换，将键盘右边的Alt键换为了Ctrl，将键盘右边的Menu键换为了Win键（i3下的Super键）

![keymap](./img/IMG_9137_.png)
