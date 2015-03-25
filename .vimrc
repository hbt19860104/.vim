""""""""""""""""""""""""""""""
"vundles设置
""""""""""""""""""""""""""""""
source ~/.vim/bundles.vim

""""""""""""""""""""""""""""""
" General Setting
""""""""""""""""""""""""""""""
function! MySys()
	if has("win32")
		return "win32"
	elseif has("unix")
		return "unix"
	else
		return "mac"
	endif
endfunction
"let performance_mode=1
let mapleader = ","
"let helptags="/root/.vim/doc"
set helplang=cn
filetype indent on

" Some settings to enable the theme:
syntax enable     " Use syntax highlighting
syntax on

if has("gui_macvim")
set background=dark
let g:solarized_termcolors =256
colorscheme solarized
"colorscheme molokai
"colorscheme phd
let g:molokai_original = 1
let g:rehash256 = 1
endif
set number

"The commandbar is 2 high
"set cmdheight=1
set ls=0 "laststatus 是否显示状态栏

"滚动条设置
"set guioptions-=r
"set guioptions-=L

"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
"fun! ToggleFullscreen()
"	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
"endf
" 全屏开/关快捷键
"map <silent> <F10> :call ToggleFullscreen()<CR>
" 基于缩进或语法进行代码折叠
"set foldenable      " 允许折叠  
set foldmethod=syntax
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
set foldlevelstart=99


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
if exists("&foldenable")
	set fen
endif

if exists("&foldlevel")
	set fdl=0
endif
" 设置快捷键将选中文本块复制至系统剪贴板
" vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 开启实时搜索功能
set incsearch
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
 set hlsearch
" 搜索时大小写不敏感
"set ignorecase

" 新行时不自动添加注释符
"不知道为什么要放在后面
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"缩进设置
" 自适应不同语言的智能缩进
" filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"set list
"set listchars=tab:>.,trail:- 

"使用系统剪贴板
"set clipboard=unnamed
""""""""""""""""""""""""""""""
"vim-powerlin设置
""""""""""""""""""""""""""""""
" 设置状态栏主题风格
"let g:Powerline_colorscheme='solarized256'

""""""""""""""""""""""""""""""
"ctags设置
""""""""""""""""""""""""""""""
set tags=tags;
"set autochdir
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>    

""""""""""""""""""""""""""""""
"taglist 设置
""""""""""""""""""""""""""""""
"不同时显示多个文件的 tag ，只显示当前文件的
"let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"不显示"press F1 to display help"
let Tlist_Compact_Format=1
"nnoremap <Leader>tl :Tlist<CR> 
"启动vim自动打开taglist
"let Tlist_Auto_Open=1

""""""""""""""""""""""""""""""
" netrw 设置
""""""""""""""""""""""""""""""
 let g:netrw_winsize = 30
 "nmap <silent> <leader>fe :Sexplore!<cr> 

""""""""""""""""""""""""""""""
"MiniBufExplorer配置
""""""""""""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs = 1


""""""""""""""""""""""""""""""
" winManager setting
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "FileExplorer,BufExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0

"在进入vim时自动打开winmanager
"let g:AutoOpenWinManager = 1
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr> 

""""""""""""""""""""""""""""""
" cscoope
""""""""""""""""""""""""""""""
"底下这两个关于cscope的设置不知道有啥用，从锦泽那边拷贝过来的
set csto=1
set cst
set cscopequickfix=s-,c-,d-,i-,t-,e-
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>G :cs find g input('Input: ')<CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
  nmap <leader>cs :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <leader>cg :scs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>cc :scs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>ct :scs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>ce :scs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>cf :scs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <leader>ci :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
  nmap <leader>cd :scs find d <C-R>=expand("<cword>")<CR><CR>	
	
  nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
  nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>	
	
  nmap <leader>vs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <leader>vg :vert scs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>vc :vert scs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>vt :vert scs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>ve :vert scs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <leader>vf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <leader>vi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
  nmap <leader>vd :vert scs find d <C-R>=expand("<cword>")<CR><CR>	

""""""""""""""""""""""""""""""
" session设置
""""""""""""""""""""""""""""""
"set sessionoptions-=curdir
"set sessionoptions+=sesdir
set sessionoptions-=options

"if filereadable("Session.vim")
"     source Session.vim
"endif
"if filereadable("cscope.out")
"     cs add cscope.out
"endif


""""""""""""""""""""""""""""""
"字符集设置
""""""""""""""""""""""""""""""
"set encoding=utf-8
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=gbk
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set guifont=Monaco:h15
" 设置 gvim 显示字体
"set guifont=YaHei\ Consolas\ Hybrid\ 16

""""""""""""""""""""""""""""""
" YCM 补全菜单配色
""""""""""""""""""""""""""""""
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
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
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
" 引入 C++ 标准库tags
set tags+=/usr/include/stdcpp.tags
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>je :YcmCompleter GoToDefinition<CR>
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/personal/.ycm_extra_conf.py'
inoremap <leader>; <C-x><C-o>


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
""""""""""""""""""""""""""""""
"vim-signature 快捷键
""""""""""""""""""""""""""""""
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


""""""""""""""""""""""""""""""
"设置tagbar
""""""""""""""""""""""""""""""
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=28 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_autofocus=1
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
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


""""""""""""""""""""""""""""""
"ctrlsf设置
""""""""""""""""""""""""""""""
"let g:ctrlsf_ackprg = 'ac --cc --cpp --go --lua --make -nogroup --nocolor --nocolumn'
nnoremap <Leader>sp :CtrlSF -k <C-R>=expand("<cword>")<CR><CR>
let g:ctrlsf_position = 'bottom'


""""""""""""""""""""""""""""""
"Project manage
""""""""""""""""""""""""""""""
let g:prjbase=".\/."
let g:project_name="vpj"
"set sessionoptions-=curdir
"let g:prjdir=PWD

function CCreateProjectFunc(name)
	let g:project_name = a:name
	let g:session_file = g:prjbase. g:project_name . "\/" . g:project_name . ".vim"
	let g:viminfo_file = g:prjbase. g:project_name . "\/" . g:project_name . ".viminfo"
	let g:cs_file = g:prjbase. g:project_name . "\/" . "cscope.files"
	let g:cs_out = g:prjbase. g:project_name . "\/" . "cscope.out"

	if !isdirectory(g:project_name)
		execute '!mkprj.sh' g:project_name
		execute 'mksession' g:session_file
		execute 'wviminfo' g:viminfo_file
		"execute '!cp' g:prjbase.g:project_name. "\/"."filenametags" ".\/&"
	else
		echo "Project already exist!"
	endif
endfunction

function OOpenProjectFunc(name)
	let l:project_name = a:name
	let l:session_file = g:prjbase. l:project_name . "\/" . l:project_name . ".vim"
	let l:viminfo_file = g:prjbase.l:project_name . "\/" . l:project_name . ".viminfo"
	let l:cs_file = g:prjbase. l:project_name . "\/" . "cscope.files"
	let l:cs_out = g:prjbase. l:project_name . "\/" . "cscope.out"
	let l:tag_file = ".".l:project_name. "\/tags"
	let g:project_name = a:name

	if filereadable(l:cs_file)
		execute 'source' l:session_file
		execute 'rviminfo' l:viminfo_file
		execute 'cs kill -1'
		execute 'cs add' l:cs_out
		"execute 'CCTreeLoadDB' l:cs_out
    	let g:LookupFile_TagExpr = "'" . g:prjbase . l:project_name . "/filenametags" . "'"
		"echo "g:LookupFile_TagExpr:" g:LookupFile_TagExpr

		execute 'set tags='.l:tag_file
		execute 'set notagrelative'
	else 
		echo "Cann't find the project"
	endif
endfunction

function UUpdateProjectFunc(name)
	let l:project_name = a:name
	let l:cs_file = g:prjbase. l:project_name . "\/" . "cscope.files"
	let l:cs_out = g:prjbase. l:project_name . "\/" . "cscope.out"

	execute '!mkcodetags.sh' l:project_name
	execute 'cs kill -1'
	execute 'cs add' l:cs_out
    let g:LookupFile_TagExpr = "'" . g:prjbase . l:project_name . "/filenametags" . "'"
	"execute 'CCTreeLoadDB' g:cs_out
endfunction

function LoadProjectDbFunc(name)
	let l:project_name = a:name
	let l:cs_out = g:prjbase. l:project_name . "\/" . "cscope.out"
	execute 'CCTreeLoadDB' l:cs_out
endfunction

function CCloseProjectFunc()
	"let l:project_name = a:name
	if g:project_name=="vpj"
		echo "project_name invalid"
		return
	endif
	let l:viminfo_file = g:prjbase. g:project_name . "\/" . g:project_name . ".viminfo"
	let g:session_file = g:prjbase. g:project_name . "\/" . g:project_name . ".vim"
	let g:viminfo_file = g:prjbase. g:project_name . "\/" . g:project_name . ".viminfo"
	"echo l:viminfo_file
    execute 'mksession!' g:session_file
	execute 'wviminfo!'  l:viminfo_file
	execute 'qa'
endfunction

:command -nargs=1 OO :call OOpenProjectFunc(<f-args>)
:command -nargs=1 GG :call CCreateProjectFunc(<f-args>)
:command -nargs=1 UU :call UUpdateProjectFunc(<f-args>)
:command -nargs=0 QQ :call CCloseProjectFunc(<f-args>)
:command -nargs=1 LL :call LoadProjectDbFunc(<f-args>)

"NERDTree设置
"map <F1> :NERDTreeToggle<CR>
nmap <silent> <leader>fe :NERDTreeToggle<CR> 
nmap <silent> <leader>ff :NERDTreeFind<CR>
let NERDTreeChDirMode=2  "选中root即设置为当前目录
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号
let NERDTreeWinPos='right'
""""""""""""""""""""""""""""""
" Replace
""""""""""""""""""""""""""""""
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
"nmap <F8> /<cword><CR>

"****************
"lookupfile
"****************
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
let g:LookupFile_UpdateTime = 1000
if filereadable("./filenametags")               "设置tag文件的名字
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>ll :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>
nmap <unique> <silent>ff <Plug>LookupFile



""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim
nmap <Leader>lb :CtrlPBuffer<CR>
"set wildignore += */tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = {
"  \ 'dir':	'\.(git)$'
"  \ 'file':	
"  \}

""""""""""""""""""""""""""""""
" taghighlight设置
nmap <Leader>th :UpdateTypesFile<CR>
""""""""""""""""""""""""""""""
