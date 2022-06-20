syntax on
set hlsearch
set number
set ruler
set colorcolumn=80
set autoindent
set smartindent
set nocompatible              " be iMproved, required
filetype off                  " required

" Auto Close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugin on Githup Repo
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs


set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" show tabs
set list
set listchars=tab:\|_


set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

map <F5> :NERDTreeToggle <CR>

" highlight unwanted spaces like trailing spaces, spaces before tab, tabs
" that aren't at the start of a line.
" (adopted from https://vim.fandom.com/wiki/Highlight_unwanted_spaces)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
match ExtraWhitespace /[^\t]\zs\t\+/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
