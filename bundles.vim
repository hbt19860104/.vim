 set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai' "主题
Plugin 'phd' "复古主题
Plugin 'TagHighlight'
Plugin 'taglist.vim' 
Plugin 'tpope/vim-fugitive' "方便在vim中使用git
Plugin 'vim-scripts/a.vim'
"Plugin 'shemerey/vim-indexer'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'fholgado/minibufexpl.vim'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'winmanager'
Plugin 'genutils'
Plugin 'lookupfile'
"Plugin 'mbbill/echofunc'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'amiorin/vim-project' " 不知道为什么 ，这个插件不能用vundle安装
Plugin 'Mizuchi/STL-Syntax'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"参考 http://www.linuxidc.com/Linux/2014-04/99716p3.htm
