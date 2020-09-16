"return" 2>&- || "exit"

" Author: @pujichun

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" nvim基础设置
set showmatch " 显示匹配括号
set number
set cursorline " 突出显示当前行
set autoindent " 继承前一行的缩进方式
set tabstop=4
set softtabstop=4
set shiftwidth=4
set enc=utf-8 " 文件编码
set fencs=utf-8,ucs-bom,shift-jis,gbk
set ruler " 打开状态栏标尺


call plug#begin('~/.vim/plugged')
" 文件侧偏栏
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" 状态栏显示文件信息
Plug 'vim-airline/vim-airline'
" 自动补全括号 引号等
Plug 'jiangmiao/auto-pairs'
" 补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
" 改变vim开始界面
Plug 'mhinz/vim-startify'
" 彩虹括号
Plug 'luochen1990/rainbow'
Plug 'vim-python/python-syntax'
" 注释插件
Plug 'preservim/nerdcommenter'
" 语法检查插件
Plug 'dense-analysis/ale'

" 注释插件
Plug 'preservim/nerdcommenter'

" 语法高亮插件
Plug 'tomlion/vim-solidity'
call plug#end()


" 彩虹括号插件设置
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
let g:rainbow_active = 1


" Ctrl + n 开启文件树
map <C-n> :NERDTreeToggle<CR>


" 注释插件配置
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }} 

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


