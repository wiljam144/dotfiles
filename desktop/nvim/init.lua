--require("packages")
--require("hotpot")

-- because it was giving errors when not run before loading other modules
vim.cmd("set termguicolors")

require("plugins/plugins")

require("core/bindings")
require("core/settings")
require("core/functions")


require("plugins/lsp")
require("plugins/cmp")
require("plugins/dashboard")
require("plugins/lualine")
require("plugins/other")
require("plugins/variables")

vim.cmd("source $HOME/.config/nvim/vim/wilder.vim")
