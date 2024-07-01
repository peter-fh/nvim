return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup({

				ensure_installed = {
					"clangd",
					"clang-format",
					"als",
					"pyright",
					"clojure_lsp",
					"erlang-ls",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "erlangls", "clojure_lsp", "lua_ls", "html", "pyright", "tsserver", "sqlls", "als", "gopls"},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {{ 'folke/neodev.nvim', opts = {} }},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.sqlls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig["html"].setup({
				capabilities = capabilities,
			})

			lspconfig["gopls"].setup({})

			lspconfig["clojure_lsp"].setup({
				capabilites = capabilities,
			})

			lspconfig.erlangls.setup({
				capabilites = capabilities,
			})

			vim.keymap.set("n", "gd", require('telescope.builtin').lsp_definitions, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})
			vim.keymap.set("n", "gI", require('telescope.builtin').lsp_implementations, {})
			vim.keymap.set("n", "<leader>D", require('telescope.builtin').lsp_type_definitions, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
