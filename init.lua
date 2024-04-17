local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local specs_folders = {
	--{ import = "plugins.ai" },
	{ import = "plugins.core" },
	{ import = "plugins.file-navigation" },
	{ import = "plugins.fun" },
	{ import = "plugins.qol" },
	{ import = "plugins.git" },
	{ import = "plugins.ui" },
	-- etc.
}
require("vim-options")
require("lazy").setup(specs_folders)

--vim.opt.background = 'light'
--vim.cmd.colorscheme('everforest') --monokai-pro, catppuccin, sonokai, everforest

--vim.cmd.colorscheme('monokai-pro') --monokai-pro, catppuccin, sonokai, everforest
vim.cmd.colorscheme('catppuccin') --monokai-pro, catppuccin, sonokai, everforest
