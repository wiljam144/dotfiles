require("lualine").setup({
    options = {globalstatus = true},
    sections = {
        lualine_c = {{
            "filename",
            symbols = {modified = " ", readonly = " "}
        }}
    }
})
