local defaultLspTable = { "pyright", "jsonls", "terraformls", "rust_analyzer" }

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.gopls.setup({
			settings = {
				gopls = {
					gofumpt = true,
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						unusedparams = true,
					},
				},
			},
		})

		for _, defaultLsp in pairs(defaultLspTable) do
			lspconfig[defaultLsp].setup({})
		end
	end,
}
