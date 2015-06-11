" Below configuration is about vundle plugin
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')
	 
	" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'
	 
	" The following are examples of different formats supported.
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plugin 'tpope/vim-fugitive'
	" plugin from http://vim-scripts.org/vim/scripts.html
	Plugin 'L9'
	" Git plugin not hosted on GitHub
	Plugin 'git://git.wincent.com/command-t.git'
	" git repos on your local machine (i.e. when working on your own plugin)
	Plugin 'file:///home/gmarik/path/to/plugin'
	" The sparkup vim script is in a subdirectory of this repo called vim.
	" Pass the path to set the runtimepath properly.
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	" Avoid a name conflict with L9
	Plugin 'user/L9', {'name': 'newL9'}
	 
	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
	" To ignore plugin indent changes, instead use:
	"filetype plugin on
	"
	" Brief help
	" :PluginList       - lists configured plugins
	" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache
	" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
	"
	" see :h vundle for more details or wiki for FAQ
	" Put your non-Plugin stuff after this line

set ai cindent
set ts=4 sw=4
set nu

set csprg=/usr/bin/cscope 
set csto=0 
set cst 
set nocsverb 
if filereadable("./cscope.out")       
    cs add cscope.out                 
else                                  
	cs add /usr/src/linux/cscope.out  
endif                                  
set csverb

Plugin 'The-NERD-Tree'
map <silent> <F7> :NERDTreeToggle<CR>

Plugin 'SrcExpl'
map <silent> <F9> :SrcExplToggle<CR>

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_windHeight=8
let g:SrcExpl_refreshTime=100
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"
let g:SrcExpl_isUpdateTags=0

Plugin 'taglist-plus'
map <silent> <F8> :TlistToggle<CR>

let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Windwidth=0
let Tlist_Exit_OnlyWindow=0
let Tlist_Auto_Open=0
let Tlist_Use_Right_Window=1
