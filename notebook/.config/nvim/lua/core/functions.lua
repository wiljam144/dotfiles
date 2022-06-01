vim.cmd("autocmd InsertEnter * lua ins_enter()")
vim.cmd("autocmd InsertLeave * lua ins_leave()")

function ins_enter()
    vim.cmd("set number nornu")
end

function ins_leave()
    vim.cmd("set number relativenumber")
end
