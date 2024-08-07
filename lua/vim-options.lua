--vim.opt.fillchars = {eob = " "}

vim.g.mapleader = " "

vim.cmd("set shiftwidth=4")


vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
        desc = "Shiftwidth 8 on lua and js files",
        pattern = {"*.js", "*.lua"},
        callback = function ()
                vim.cmd("setlocal tabstop=4 shiftwidth=8 expandtab")
        end,
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
        desc = "Open outline on entering code",
        callback = function()
                require('outline').open()
                require('outline').focus_code()
        end,
})


vim.wo.relativenumber = true
vim.wo.number = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.colorcolumn = "81"

vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})

--vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>p", "\"+p")
--vim.keymap.set("x", "<leader>p", "\"dP")

vim.keymap.set("i", "<C-p>", "<Esc>\"+pi")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set(
        "n",
        "<leader>ee",
        "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
