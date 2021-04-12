
call plug#begin("~/.config/nvim/plugged")
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/nerdfont.vim'
	Plug 'lambdalisue/fern-renderer-nerdfont.vim'
	" Plug 'jnurmine/Zenburn'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'jacoborus/tender.vim'
call plug#end()

source ~/.config/nvim/fern.vim
source ~/.config/nvim/nerdfonts.vim

colorscheme tokyonight
set number
