" Nvim pluggins
call plug#begin('~/.config/nvim/plugged')

Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-renderer-devicons.vim'

call plug#end()
" Vim settings
 
set cursorline
set splitbelow
set splitright
" Font
set guifont=Fantasque\ Sans\ Mono\ 10
" Auto brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" Sytnax
syntax enable
" Mouse integration
set mouse=a
" Show numbers
set number
" Ignore case when searching and if is capital then not ignorecase
set ignorecase
set smartcase
" Whitespaces fixes
set backspace=indent,eol,start
autocmd Filetype gitcommit setlocal spell
" Show comands
set showcmd
" Themes config
set termguicolors
let g:gruvbox_italics=1
colorscheme gruvbox
" Lightline theme
let g:lightline = { 'colorscheme': 'gruvbox' }

" netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Tabs config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Fern config
let g:fern#renderer = "nerdfont"
augroup my-fern-startup
  autocmd! *
  autocmd VimEnter * ++nested Fern %:h -reveal=% -drawer -toggle
augroup END

" Nerd fonts config
let g:nerdfont#directory#customs = {
	\ '': "\uf114",
	\ 'open': "\uf115",
	\ 'close': "\uf07b",
	\ 'symlink': "\uf751"
	\ }
