local nvim_var = vim.api.nvim_set_var

nvim_var("indent_blankline_char", "▏")

nvim_var("indent_blankline_filetype_exclude", {"dashboard", "markdown", "haskell"})

nvim_var("nvim_tree_git_hl", 1)

nvim_var("conjure#filetype#fennel", "conjure.client.fennel.stdio")
