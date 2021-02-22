
" Nvim pluggins
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
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

" Tabs config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }

" Fern config
map <C-b> :Fern %:h -reveal=% -drawer -toggle -stay -keep -width=25<CR>
let g:fern#renderer = "nerdfont"

function! s:init_fern() abort
	nmap <buffer> <Backspace> <Plug>(fern-action-collapse)
	nmap <buffer> <CR> <Plug>(fern-action-open-or-expand)
	nmap <buffer> e <Plug>(fern-action-enter)
	nmap <buffer> E <Plug>(fern-action-leave)
	nmap <buffer> q :<C-u>quit<CR>
endfunction

augroup my-fern-startup
	autocmd! *
	autocmd FileType fern call s:init_fern()
	autocmd VimEnter * ++nested Fern %:h -reveal=% -drawer -toggle -stay -keep -width=25
augroup END

" Nerd fonts config
let g:nerdfont#directory#customs = {
	\ '': "\uf114",
	\ 'open': "\uf115",
	\ 'close': "\uf07b",
	\ 'symlink': "\uf751"
	\ }
