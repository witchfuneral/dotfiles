set number
set termguicolors
autocmd vimenter * ++nested colorscheme walh-default 
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'casonadams/walh'
	Plug 'goolord/alpha-nvim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

Plug 'goolord/alpha-nvim'

lua << EOF
 require'alpha'.setup(require'alpha.themes.dashboard'.config)
EOF
