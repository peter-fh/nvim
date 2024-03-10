return {
	"cbochs/grapple.nvim",
	config = function()
		vim.keymap.set("n", "<leader>m", require("grapple").toggle)
		vim.keymap.set("n", "<leader>M", require("grapple").toggle_tags)
		vim.keymap.set("n", "<leader>1", "<cmd>Grapple select index=1<cr>")
		vim.keymap.set("n", "<leader>2", "<cmd>Grapple select index=2<cr>")
	end,
}
