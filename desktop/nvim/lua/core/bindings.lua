local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})

vim.g.mapleader = " "
vim.g.maplocalleader = ","

local options = {
    noremap = true,
    silent = true,
}

map("n", "j", "gj", {})
map("n", "k", "gk", {})

map("n", "//", ":nohlsearch<CR>", {silent = true})

map("n", "<A-e>", ":NvimTreeToggle<CR>", options)

map("n", "<A-`>", ":ToggleTerm<CR>", options)

map("n", "ca", ":lua vim.lsp.buf.code_action()<CR>", options)

map("n", "<A-,>", ":BufferPrevious<CR>", options)
map("n", "<A-.>", ":BufferNext<CR>", options)
map("n", "<A-<>", ":BufferMovePrevious<CR>", options)
map("n", "<A->>", ":BufferMoveNext<CR>", options)
map("n", "<A-s>", ":BufferPick<CR>", options)
map("n", "<A-c>", ":BufferClose<CR>", options)

map("n", "<Leader>ss", ":<C-u>SessionSave<CR>", options)
map("n", "<Leader>sl", ":<C-u>SessionLoad<CR>", options)
map("n", "<Leader>fh", ":DashboardFindHistory<CR>", options)
map("n", "<Leader>ff", ":DashboardFindFile<CR>", options)
map("n", "<Leader>tc", ":DashboardChangeColorscheme<CR>", options)
map("n", "<Leader>fa", ":DashboardFindWord<CR>", options)
map("n", "<Leader>fb", ":DashboardJumpMark<CR>", options)
map("n", "<Leader>cn", ":DashboardNewFile<CR>", options)
