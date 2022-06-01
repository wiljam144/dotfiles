local o = vim.o
local wo = vim.wo
local bo = vim.bo

vim.cmd("colorscheme kanagawa")
vim.cmd("syntax enable")

o.background = "dark"

o.virtualedit = "onemore"

vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set tabstop=4")
vim.cmd("filetype plugin indent on")

vim.cmd("set number relativenumber")
wo.cursorline = true

o.encoding = "UTF-8"
o.laststatus = 2
o.showmode = false

vim.cmd("set clipboard+=unnamedplus")
