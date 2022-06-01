(local o vim.o) ; globals
(local wo vim.wo) ; window local
(local bo vim.bo) ; buffer local

(vim.cmd "colorscheme spaceduck")
(vim.cmd "syntax enable")
(set o.termguicolors true)
(set o.background "dark")

(set o.virtualedit "onemore")

; (set bo.autoindent true)
; (set bo.expandtab true)
; (set bo.shiftwidth 4)
; (set o.smarttab true)
; (set bo.tabstop 4)
; (vim.cmd "filetype plugin indent on")

(vim.cmd "set autoindent")
(vim.cmd "set expandtab")
(vim.cmd "set shiftwidth=4")
(vim.cmd "set smarttab")
(vim.cmd "set tabstop=4")
(vim.cmd "filetype plugin indent on")

(vim.cmd "set number relativenumber")
(set wo.cursorline true)

(set o.encoding "UTF-8")
(set o.laststatus 2)
(set o.showmode false)

(vim.cmd "set clipboard+=unnamedplus")
