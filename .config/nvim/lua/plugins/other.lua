local treesitter_parsers = {"fennel", "go", "python", "cpp", "lua"}
require("nvim-treesitter.configs").setup({
    ensure_installed = treesitter_parsers,

    highlight = {
        enable = true,
    },
})

require("nvim-tree").setup({
    renderer = {indent_markers = {enable = true}}
})

require("scrollbar.handlers.search").setup()

require("indent_blankline").setup()

require("scrollbar").setup({
    handlers = {diagnostic = true, search = true}
})

require("range-highlight").setup()

require("colorizer").setup()
