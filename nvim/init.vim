
call plug#begin("~/.config/nvim/plugged")
	Plug 'sheerun/vim-polyglot'
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/nerdfont.vim'
	Plug 'lambdalisue/fern-renderer-nerdfont.vim'
	Plug 'itchyny/lightline.vim'
	" Plug 'Yggdroot/indentLine'
	" Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'sudar/comments.vim'
	"" Colorchemeso on vim
	Plug 'arzg/vim-colors-xcode'
	Plug 'dylnmc/novum.vim'
	Plug 'zefei/simple-dark'
	Plug 'franbach/miramare'
	Plug 'jnurmine/Zenburn'
	Plug 'arcticicestudio/nord-vim'
	Plug 'rakr/vim-one'
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'jacoborus/tender.vim'
call plug#end()
source ~/.config/nvim/fern.vim
source ~/.config/nvim/nerdfonts.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/unmap.vim
source ~/.config/nvim/truecolors.vim
" source ~/.config/nvim/android-vim.vim

" Display settings
colorscheme gruvbox-material
set number relativenumber
