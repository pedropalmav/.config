set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

"Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'yggdroot/indentline'
"Syntax
Plug 'sheerun/vim-polyglot'

"Status Bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons' "Hay que instalar una fuente de letra, revisar si conviene 

" GIT 
Plug 'airblade/vim-gitgutter'

" t-mux
Plug 'christoomey/vim-tmux-navigator'

"Plug 'neoclide/coc.nvim', {'branch':'release'}

" Typing
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

call plug#end()


" Otras configuraciones
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let NERDTreeQuitOnOpen = 1
let mapleader=" "

" Plugins
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>7 <Plug>NERDCommenterToggle
vmap <Leader>7 <Plug>NERDCommenterToggle

nmap <Leader>p :File<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<CR>

" Native vim
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" split rezise
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semicolon
nnoremap <Leader>; $a;<Esc>

" file path
nnoremap <Leader>kp :let @*=expand("%")<CR>

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" buffers
map <Leader>ob :Buffers<CR>

" open terminal
"nnoremap <C-t> :call OpenTerminal()<CR>
