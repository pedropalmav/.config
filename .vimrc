set number 						"Enable line numbers
set mouse=a 					"Enable mouse
set numberwidth=1 
set clipboard=unnamed "Permite utilizar el clipboard general del computador
syntax enable 				"Permite resaltar las palabras
set showcmd 					"Mustra comandos utilizados y otas funcionalidades
set ruler 						"Show cursor position
set encoding=utf-8
set showmatch 				"Show matching parenthesis
"set ai 								"Enable autoindentation
set sw=4 							"Autoindentación como 4 espacios
set laststatus=2 			"Enable status bar (always on display)
set noshowmode				"Hace que no se vea el modo en la status bar (Como lo hace vim por defecto)
set cursorline
":highlight Cursorline cterm=bold ctermbg=black

call plug#begin('~/.vim/plugged')

"Themes
Plug 'morhetz/gruvbox'									"Main theme
Plug 'shinchu/lightline-gruvbox.vim' 		"Status bar theme
Plug 'catppuccin/nvim', {'as': 'catppuccin'} "Main Theme


"IDE
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'yggdroot/indentline'
Plug 'neoclide/coc.nvim', {'branch':'release'}  "Autocompletion 

"Syntax
Plug 'sheerun/vim-polyglot'

"Status Bar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

"NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons' "Hay que instalar una nerdfont

" GIT 
Plug 'airblade/vim-gitgutter'

" t-mux
Plug 'christoomey/vim-tmux-navigator'

"Typing
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"Previews
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } "Previsualizador de Markdown

call plug#end()


" Otras configuraciones

" Editor theme

"colorscheme gruvbox

let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha


lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin

" lightline theme

let g:gruvbox_contrast_dark = "hard"
let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
let g:lightline = {'colorscheme': 'catppuccin'}

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
