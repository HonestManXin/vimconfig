filetype plugin on
filetype plugin indent on
"set foldmethod=syntax
"手动打开代码折叠功能
"开启插件
set helplang=cn
"帮助系统设置成中文
set autoread
"文件在别处修改后自动加载
set nocompatible
"不兼容vi模式
set modelines=0
"不使用modelines
set number
"显示行号
syntax enable
syntax on
"语法高亮
set ai
"自动缩进
set autoindent
"自动对齐方式
set smartindent
"智能对齐方式
set tabstop=4
"设置tap键为4个空格
set shiftwidth=4
"设置当行之间交错时使用4个空格， << 和 >> 命令移动时的宽度为 4
set softtabstop=4
"使得按退格键时可以一次删掉 4 个空格
set expandtab
"设置缩进长度
set showmatch
"设置匹配模式 显示括号对应
set ruler
"打开状态栏标尺
set incsearch
"实时显示搜索结果
set ignorecase
"检索时忽略大小写
set hls
"检索时高亮显示匹配
set scrolloff=3
set showmode
"显示当前模式
set showcmd
"在窗口右下角显示完整命令已输入部分
set hidden
"允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set wildmenu
"启用文本模式的菜单
set wildmode=list:longest
"增强模式打开列表
set visualbell
"可视化铃声
set cursorline
"高亮光标所在行
set ttyfast
"设置快速终端
set backspace=indent,eol,start
"设置backspace的工作方式 不兼容vi
set laststatus=2
"总是显示状态栏
set encoding=utf-8
"选择编码
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"避免windows下gvim菜单和系统提示乱码
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"自动识别编码，正确显示中文
set guifont=Menlo:h16
"设置双字节字体
set guifontwide=Hei_Regular:h14
"设置单字节字体
set linespace=2
"设置回车换行的格式
set fileformats=unix
set nobackup
set noswapfile
set nowritebackup
"禁止备份

"调用pathogen插件
call pathogen#infect()
"call pathogen#incubate("after")
"call pathogen#runtime_append_all_bundles()
"filetype off
"syntax on
"filetype plugin indent on

"设置ctrl+t打开NERDTree插件
"autocmd VimEnter * NERDTree
let NERDTreeQuitOnOpen=1
map <C-t> :NERDTree<CR>

"设置powerline,漂亮的状态栏插件
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'unicode'
"}

"设置zen-coding插件
let g:user_zen_expandabbr_key = '<D-e>'
let g:use_zen_complete_tag = 1

"设置word_complete插件
"autocmd BufEnter * call DoWordComplete()


"设置macvim窗口大小
autocmd! bufwritepost .vimrc source ~/.vimrc

if has("gui_running")
    set go=aAce              " 去掉难看的工具栏和滑动条
    set guifont=Monaco:h13   " 设置默认字体为monaco
    set showtabline=2        " 开启自带的tab栏
    set columns=90          " 设置宽
    "set lines=20             " 设置长
    colorscheme blue
endif

"set tags+=~/.vim/systags
"Tag-list的配置安装
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 
let Tlist_Show_One_File=1
let Tlist_Process_File_Always=1
"let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1
let Tlist_Use_Right_Window=1
"let Tlist_Inc_Winwidth = 0
let Tlist_WinWidth=30
"nnoremap <silent> <F8> :TlistToggle<CR>

"cscope设置
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"miniBuffer 快速浏览插件
let g:miniBufExplorerMoreThanOne=1 "只要打开文件就打开窗口
let g:miniBufExplMapWindowNavVim = 1 "允许hjkl导航
let g:miniBufExplMapWindowNavArrows = 1 "允许上下左右导航
"let g:miniBufExplMapCTabSwitchBufs = 1 "允许<C-TAB切换buffer>
let g:miniBufExplModSelTarget = 1 "若使用其他的explorer的话添加
let g:miniBufExplForceSyntaxEnable = 1 "不知道干什么的
let g:miniBufExplCheckDupeBufs = 0 "去除重复缓存名字

"显示buffer在顶端，使用vim-airline
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'


"grep插件 在工程中查找
nnoremap <silent> <F3> :Grep<CR>

"可以画图用的好玩的插件
"map <F1> :call ToggleSketch()<CR>

filetype plugin on

"echofunc plugin
"let g:EchoFuncShowOnStatus = 1
"set statusline=%<%F%1*%m%*%r%y%=%b\ 0x%B\ \ [l,c]%l,%c%V\ %p%%\ %{EchoFuncGetStatusLine()}

