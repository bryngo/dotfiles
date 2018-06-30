set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" This is needed for me to delete characters, for some reason
set backspace=indent,eol,start


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

" For jade syntax highlighting
Plugin 'digitaltoad/vim-jade'

" Coloring Plugin
Plugin 'sjl/badwolf'

" For bracket / paraenthesis / etc completion 
Plugin 'raimondi/delimitmate'

" Displays changes in git file
Plugin 'airblade/vim-gitgutter'

" tcomment_vim Plugin
" lets you quickly comment out lines of code 
Plugin 'tomtom/tcomment_vim'

" Jumping around docs
Plugin 'easymotion/vim-easymotion'

" code completion
" Plugin 'Valloric/YouCompleteMe'

" syntax checking
" Plugin 'scrooloose/syntastic'

" For async linting
" Plugin 'w0rp/ale'


" For ALE to work with airline
let g:airline#extensions#enabled = 1

" To easily jump between errors with ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" for writing latex in vim
Plugin 'lervag/vimtex'


" For file finding while editing
Plugin 'ctrlpvim/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" For displaying file tree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" For status bars
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Distraction free writing
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

" Color scheme
Plugin 'reedes/vim-colors-pencil'

function! s:goyo_enter()
  " silent !tmux set status off
  " silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set scrolloff=999
  set nu 
  set cc=80
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  " silent !tmux set status on
  " silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set scrolloff=5
  Limelight!
  " ...
endfunction

let g:goyo_width = 80

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" For cool status bars
" Plugin 'itchyny/lightline.vim'

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

" YouCompleteMe configurations
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" === lightline.vim confiurations ===
" set laststatus=2
" let g:lightline = {
"       \ 'component_function': {
"       \   'filename': 'LightlineFilename',
"       \ },
"       \ }
"
" function! LightlineFilename()
"   return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
"         \ &filetype ==# 'unite' ? unite#get_status_string() :
"         \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
"         \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
" endfunction
"
" let g:unite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0
" let g:vimshell_force_overwrite_statusline = 0
"
" if !has('gui_running')
"   set t_Co=256
" endif
" === end lightline.vim configuration ===s

syntax on
set cc=80
set number
colorscheme badwolf
