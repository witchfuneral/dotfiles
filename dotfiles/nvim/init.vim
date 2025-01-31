set number
autocmd vimenter * ++nested colorscheme pywal
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'ellisonleao/gruvbox.nvim'
	Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
call plug#end()
