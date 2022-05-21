(local nvim_lsp_installer (require "nvim_lsp_installer"))
(nvim_lsp_installer.setup {"automatic_installation" true})

(local lspconfig (require "lspconfig"))
(lspconfig.pyright.setup {})
;(lspconfig.gopls.setup {})
(lspconfig.clangd.setup {})
