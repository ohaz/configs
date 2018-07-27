set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable

set number
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
set rtp+=$HOME/.vim/bundle/vim-colors-solarized/
" set rtp+=$HOME/.vim/bundle/solarized/colors/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin':
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Plugin 'colors/solarized.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" All of your Plugins must be added before the following line


" vim airline
" Adds a nice statusbar at the bottom of the screen
Plugin 'git@github.com:vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='tomorrow'

" Nerdtree
" Adds a filetree
" Usage: :NERDTreeToggle
" Usage: Ctrl + ww to switch between windows
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Better Whitespace
" Shows whitespace at end of line
" Enable/Disable with :ToggleWhitespace
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'danilo-augusto/vim-afterglow'

Plugin 'tpope/vim-surround'

Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme afterglow


noremap <f1> :NERDTreeToggle<return>
noremap <f2> :Files<return>
noremap <F5> :GitGutterSignsToggle<return>
noremap <F8> :GV!<return>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

set backspace=indent,eol,start
set incsearch
set hlsearch

set splitbelow
set splitright

set updatetime=100

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
