vim.opt.fillchars = {eob = " "}
vim.g.mapleader = " "
vim.cmd("set shiftwidth=4")
vim.api.nvim_exec([[
    autocmd FileType javascript setlocal tabstop=4 shiftwidth=8 expandtab
]], false)
vim.api.nvim_exec([[
    autocmd FileType lua setlocal tabstop=4 shiftwidth=8 expandtab
]], false)
vim.wo.relativenumber = true
vim.wo.number = true
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
