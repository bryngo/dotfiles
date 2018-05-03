set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Coloring Plugin
Plugin 'sjl/badwolf'

" Displays changes in git file
Plugin 'airblade/vim-gitgutter'

" tcomment_vim Plugin
Plugin 'tomtom/tcomment_vim'

" code completion
Plugin 'Valloric/YouCompleteMe'

" For markdown
" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'

" For live markdown 
Plugin 'suan/vim-instant-markdown'
let vim_markdown_preview_pandoc=1

" enable latex in vim-markdown plugin
let g:vim_markdown_math = 1
" let g:ycm_confirm_extra_conf = 1
let g:ycm_global_ycm_extra_conf = ''

" git repos on your local machine (i.e. when working on your own plugin)
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


syntax on
set cc=80
set number
colorscheme badwolf