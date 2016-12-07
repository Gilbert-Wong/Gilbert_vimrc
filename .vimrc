"vim-plug插件目录
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
Plug 'octol/vim-cpp-enhanced-highlight'

"Themes
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Indent Guides
Plug 'nathanaelkane/vim-indent-guides'

"接口与实现快速切换
Plug 'derekwyatt/vim-fswitch'

"显示书签
Plug 'kshenoy/vim-signature'

"显示tagbar
Plug 'majutsushi/tagbar'

"自动生成标签文件
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/indexer.tar.gz'

"ycm插件
Plug 'Valloric/YouCompleteMe'

"markdown 实时解析
Plug 'suan/vim-instant-markdown'

"ASCII art风格注释
Plug 'vim-scripts/DrawIt'

"vim debug tool
Plug 'gilligan/vim-lldb'

"vim fcitx
Plug 'lilydjwg/fcitx.vim'
call plug#end()


"让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC


"快捷键"""""""""""""""""""""""""""""""""""""""""""""""
"定义快捷键的前缀，即<Leader>
let mapleader=";"
nmap LB 0
nmap LE $

"设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
"设置快捷键将选中文本快复制至系统剪贴板
nmap <Leader>p "+p
"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
"定义快捷键保存所有窗口内容
nmap <Leader>w :w<CR>
"定义快捷键保存所有窗口内容并退出vim
nmap <Leader>WQ :wa<CR>:q<CR>
"不做任何保存，直接退出vim
nmap <Leader>Q :qa!<CR>
"定义快捷键在结对符之间跳转
nmap <Leader>M %
"定义Buffer切换键
"nmap <Leader>bn :bn<CR>
map <C-Tab> :bn<CR>
"nmap <Leader>bp :bp<CR>
map <C-S-Tab> :bp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""

"开启实时搜索功能
set incsearch
"搜索忽略大小写
set ignorecase
"关闭兼容模式
set nocompatible
"vim 自身命令行模式智能补全
set wildmenu

"""""""""""'外观设定"""""""""""""""""""""'
"配色方案
syntax enable
set background=light
"set background=dark
colorscheme solarized
"colorscheme molokai
"设置状态栏主题风格
set laststatus=2
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5
"设置字符编码
set encoding=utf8
set langmenu=zh_CN.utf-8

" 禁止折行
"set nowrap

"禁止光标闪烁
set gcr=a:block-blinkon0
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

"语法高亮
set syntax=on

""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""编辑设定"""""""""""""""""""""""


"自动缩进
set autoindent
set cindent

"Tab键的宽度
set tabstop=4

"让vim把连续数量的空格视为一个制表符
set softtabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4

"将制表符扩展为空格
set expandtab

"在行和段开始处使用制表符
set smarttab

"显示行号
set number

"历史记录数
set history=1000

"禁止生成临时文件
set nobackup
set noswapfile


"搜索逐字符高亮
set hlsearch
set incsearch

"行内替换
set gdefault


"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"命令行的高度
set cmdheight=1

"侦测文件类型
filetype on

"自适应不同语言的智能缩进
filetype indent on

"载入文件类型插件
filetype plugin on

"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

"高亮显示匹配的括号
set showmatch

"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"为C程序提供自动缩进
set smartindent

"基于缩进或语法进行代码折叠
"set foldenable=indent
set foldmethod=syntax
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"启动vim时关闭折叠代码
"set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"去掉输入错误的提示声音
set noeb

"在处理未保存或只读文件的时候，弹出确认
set confirm

"functions
" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()

"""""""""""Plug configuration""""""""""""""""""'

"Indent Guides Plug configuration
"随vim自启动
let g:indent_guides_enable_on_vim_startup=1
"从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
"色块宽度
let g:indent_guides_guide_size=1
"快捷键i开关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"*.cpp和*.h间切换
nmap <silent> <Leader>sw :FSHere<cr>

"tagbar设置
let tagbar_right=1
"设置显示/隐藏标签列表子窗口的快捷键。速记:identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR>
"set show/hide filelist shortcut
nmap <Leader>fl :NERDTreeToggle<CR>
"设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

"正向遍历同名标签
nmap <Leader>tn :tnext<CR>
"反向遍历同名标签
nmap <Leader>tp :tprevious<CR>
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

"ycm配置
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1
" 开启 YCM 标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
"loaded in python2
let g:ycm_server_python_interpreter='/usr/bin/python'
" 引入 C++ 标准库tags
set tags+=/usr/include/c++/5/stdcpp.tags
set tags+=/usr/include/sys.tags


