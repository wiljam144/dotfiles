call plug#begin('~/.config/nvim/plugged')

Plug 'glepnir/dashboard-nvim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'wiljam144/spaceduck'
Plug 'kristijanhusak/vim-orgmode'
Plug 'nvim-neorg/neorg'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'dense-analysis/ale'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'psliwka/vim-smoothie'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'romgrk/fzy-lua-native'
Plug 'tpope/vim-commentary'         " gcc to comment out a line
Plug 'machakann/vim-sandwich' " sa{motion/textobject}{addition} saiw( makes foo (foo)
Plug 'junegunn/goyo.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'winston0410/cmd-parser.nvim'
Plug 'winston0410/range-highlight.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jbyuki/nabla.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'NFrid/due.nvim'
Plug 'lervag/vimtex'
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'Olical/conjure'
Plug 'rktjmp/lush.nvim'
Plug 'Lokaltog/vim-monotone'
Plug 'leafo/moonscript-vim'
Plug 'mnacamura/vim-fennel-syntax'

call plug#end()

