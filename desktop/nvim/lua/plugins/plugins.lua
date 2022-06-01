local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require("packer").startup(function()

    use "wbthomason/packer.nvim"
    use "rktjmp/hotpot.nvim"
    use "Olical/aniseed"

    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "glepnir/lspsaga.nvim"
    use "onsails/lspkind.nvim"
    use "dcampos/nvim-snippy"
    use "dcampos/cmp-snippy"
    --use "honza/vim-snippets"

    use "nvim-lualine/lualine.nvim"
    use "jiangmiao/auto-pairs"
    use "glepnir/dashboard-nvim"
    use "ryanoasis/vim-devicons"
    use "sheerun/vim-polyglot"
    use "akinsho/toggleterm.nvim"
    use "folke/trouble.nvim"
    use "wiljam144/spaceduck"
    use "wiljam144/kanagawa.nvim"
    use "nvim-lua/plenary.nvim"
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "lukas-reineke/indent-blankline.nvim"
    use {"junegunn/fzf", run = "-> fzf#install"}
    use "romgrk/fzy-lua-native"
    use "junegunn/fzf.vim"
    use "tpope/vim-fugitive"
    use "karb94/neoscroll.nvim"
    use "gelguy/wilder.nvim"
    use "tpope/vim-commentary"
    use "machakann/vim-sandwich"
    use "kyazdani42/nvim-web-devicons"
    use "romgrk/barbar.nvim"
    use "akinsho/toggleterm.nvim"
    use "petertriho/nvim-scrollbar"
    use "kevinhwang91/nvim-hlslens"
    use "winston0410/cmd-parser.nvim"
    use "winston0410/range-highlight.nvim"
    use "norcalli/nvim-colorizer.lua"
    use "kyazdani42/nvim-tree.lua"
    use "axelf4/vim-strip-trailing-whitespace"
    use "Olical/conjure"
    use "rktjmp/lush.nvim"
    use "Lokaltog/vim-monotone"

    if packer_bootstrap then
        require('packer').sync()
    end
end)
