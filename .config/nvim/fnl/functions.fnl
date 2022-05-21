(vim.cmd "autocmd InsertEnter * lua ins_enter()")
(vim.cmd "autocmd InsertLeave * lua ins_leave()")

(global ins_enter (fn [] (vim.cmd "set number nornu")))
(global ins_leave (fn [] (vim.cmd "set number relativenumber")))
