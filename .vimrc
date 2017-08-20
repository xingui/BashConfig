"set the runtime path to include Vundle and initialize
filetype off
" 关闭兼容模式
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=/gpfs/mcs/data/users/xingui_zeng/tools/vim/usr/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('/gpfs/mcs/data/users/xingui_zeng/tools/vim/usr/bundle/')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Add all your plugins here (note older versions of Vundle used Bundleinstead of Plugin)
" 代码折叠
Plugin 'tmhedberg/SimpylFold'
" 代码缩进 
Plugin 'vim-scripts/indentpython.vim'
" 代码补全
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
" 代码高亮
Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'jeaye/color_coded'
" letex
" Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
" 配色
Plugin 'jnurmine/Zenburn' 
" 主题美化插件
Plugin 'altercation/vim-colors-solarized'
" 状态栏插件，可以显示当前的虚拟环境、Git分支、正在编辑的文件等信息。
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 多文件打开切换
Plugin 'bling/vim-bufferline'
" 符号自动补全，{} () []
Plugin 'Raimondi/delimitMate'
" 代码快速查找插件
" Bundle 'ctrlpvim/ctrlp.vim'
" 静态检查python代码
Plugin 'nvie/vim-flake8'
" 标签列表
Plugin 'vim-scripts/taglist.vim'
" 接口与实现文件快速切换，如.c 和 .h 文件
Plugin 'derekwyatt/vim-fswitch'
" 文件目录显示插件
Plugin 'scrooloose/nerdtree'
" 多文件打开切换
Plugin 'fholgado/minibufexpl.vim'
" 自动输入法切换 for mac
" Plugin 'ybian/smartim'
 
" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
"" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 定义快捷键的前缀，即<Leader>
let mapleader=";""

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap wl <C-W>l
" 跳转至左方的窗口
nnoremap wh <C-W>h
" 跳转至上方的子窗口
nnoremap wk <C-W>k
" 跳转至下方的子窗口
nnoremap wj <C-W>j
" 定义查找光标所在单词的快捷键
nnoremap f *
" 定义快捷键在结对符之间跳转
nmap <Leader>m %
" 开启实时搜索功能
set incsearch
" 高亮显示搜索结果
set hlsearch
" 搜索时大小写不敏感
set ignorecase
" vim 自身命令行模式智能补全
set wildmenu
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" 关闭叮叮声和闪屏
set vb t_vb=
au GuiEnter * set t_vb=
" 禁止折行
set nowrap
" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on
" 定义快捷键到行首和行尾
nmap <Leader>b 0
nmap <Leader>e $
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
set foldlevel=99
" Enable folding with the spacebar 
nnoremap <space> za
nnoremap <leader>gb <C-O>  
:map <F2> <C-W>f 
" 开启自动缩进，set autoindent
set ai
" 显示输入的命令
set showcmd
" 关闭错误响铃
set noerrorbells
" 开启可视化响铃，终端错误，屏幕闪烁
set visualbell
" 清除vim退出的界面残留
" set term=xterm
" 加载主题
set background=dark
colorscheme solarized
"colo zenburn 
" diff时，加在另一主题
"if &diff
""    colors elflord
"endif
" 设置F9为切换粘贴模式快捷键
set pastetoggle=<F9>
" 新分割窗口位于下方
set splitbelow
" 新分割窗口位于右方
set splitright
" 设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 设置buf切换
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
nnoremap <leader>3 :3b<CR>
nnoremap <leader>4 :4b<CR>
nnoremap <leader>5 :5b<CR>
nnoremap <leader>6 :6b<CR>
nnoremap <leader>7 :7b<CR>
nnoremap <leader>8 :8b<CR>
nnoremap <leader>9 :9b<CR>
nnoremap <leader>wl :bn<CR>
nnoremap <leader>wh :bp<CR>
nnoremap <leader>ww :b#<CR>



filetype plugin on
"syn on

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py  set textwidth=110
au BufNewFile,BufRead *.py  set fileformat=unix

"au BufNewFile,BufRead *.py,*.c,*.h  TlistToggle

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad. Make trailing whitespace be flagged as bad.
au BufNewFile,BufRead *.c,*.h,*.py,*.pyw,*.cpp set list listchars=tab:>-
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$\|^\t\+/
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h,*.cpp match BadTab /^\t\+/

" airline config
" 开启tabline
" let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔符
" let g:airline#extensions#tabline#left_sep = ' '
"" tabline为激活的buffer的两端字符
" let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#buffline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:bufferline_echo = 0
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'
"config letex
" let g:tex_flavor='latex'
" set grepprg=grep\ -nH\ $*
" set sw=2
" set iskeyword+=:
" nnoremap <leader>ll \ll
" nnoremap <leader>lv \lv

"config for youcompleteme
"设置error和warning的提示符，如果没有设置，ycm会以syntastic的  
" g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准  
let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*'
"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
nnoremap <leader>ge :YcmDiags<CR>  

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_keep_logfiles='~/.vim/bundle/YouCompleteMe/err.log'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
"不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0  
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  
"在注释中也可以补全  
let g:ycm_complete_in_comments=1  
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  

" config for color_coded
" hi link StructDecl Type
" hi link UnionDecl Type
" hi link ClassDecl Type
" hi link EnumDecl Type

let python_highlight_all=1

set backspace=indent,eol,start

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" 使用Taglist显示符号/函数/标签
nmap <Leader>tl :TlistToggle<CR>
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" 显示/隐藏 MiniBufExplorer 窗口
let g:miniBufExplorerAutoStart = 0
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <Leader>t :MBEbn<cr>
map <Leader>st :MBEbp<cr>

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
