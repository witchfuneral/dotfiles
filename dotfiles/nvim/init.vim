set number
set termguicolors
autocmd vimenter * ++nested colorscheme walh-default 
call plug#begin()
	Plug 'kien/ctrlp.vim'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'casonadams/walh'
	Plug 'goolord/alpha-nvim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'rbgrouleff/bclose.vim'
call plug#end()

Plug 'goolord/alpha-nvim'

lua << EOF
 require'alpha'.setup(require'alpha.themes.dashboard'.config)
EOF
