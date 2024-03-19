--[[ return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			max_width = 75,
		})
		vim.notify = require("notify")
	end,
} ]]

return {}
