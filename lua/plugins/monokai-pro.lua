return {
	"loctvl842/monokai-pro.nvim", 
	name = "monokai", 
	priority = 1000,

	config = function()		 
		require("monokai-pro").setup(
			{
			transparent_background = true,
			filter = "pro"
			}
		)
		vim.cmd.colorscheme "monokai-pro"
	end
}
