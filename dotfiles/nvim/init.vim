set number
autocmd vimenter * ++nested colorscheme retrobox
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'ellisonleao/gruvbox.nvim'
call plug#end()
