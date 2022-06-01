local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

-- These two are optional and provide syntax highlighting
-- for Neorg tables and the @document.meta tag
parser_configs.norg_meta = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
        files = { "src/parser.c" },
        branch = "main"
    },
}
parser_configs.norg_table = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
        files = { "src/parser.c" },
        branch = "main"
    },
}
require('nvim-treesitter.configs').setup{
    ensure_installed = {"norg", "norg_meta", "norg_table"},
    highlight = {
        enable = true,
    },
}
require('neorg').setup {
    -- Tell Neorg what modules to load
    load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {
            config = {
                icons = {
                    heading = {
                        enabled = true,
                        level_1 = {
                            enabled = true,
                            icon = "●",
                        },
                        level_2 = {
                            enabled = true,
                            icon = " ○",
                        },
                        level_3 = {
                                enabled = true,
                                icon = "  ●",
                        },
                        level_4 = {
                            enabled = true,
                            icon = "   ○",
                        },
                    },
                },
                markup_preset = "safe"
            },
        }, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    index = "~/notes/neorg/",
                    notes = "~/notes/neorg/notes",
                },
                autodetect = true,
                autochdir = true,
            },
        },
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                neorg_leader = "<Leader>"
            },
        },
    },
}
local neorg_leader = "<Leader>"

require("nvim-tree").setup {
    renderer = {
        indent_markers = {
            enable = true,
        }
    },
}
require("scrollbar.handlers.search").setup()
require("indent_blankline").setup {}
require("scrollbar").setup {
    handlers = {
        diagnostic = true,
        search = true,
    }
}
require("range-highlight").setup{}
require("colorizer").setup()
require("due_nvim").setup {
    ft = '*.norg'
}
