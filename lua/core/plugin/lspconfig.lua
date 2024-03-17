local defaultLspTable =
	{ "pyright", "jsonls", "terraformls", "rust_analyzer", "bashls", "tsserver", "eslint", "tailwindcss" }

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
					env = {
						GOPROXY = "goproxy.myteksi.net|proxy.golang.org,direct",
						GONOSUMDB = "gitlab.myteksi.net",
						GONOPROXY = "none",
					},
					directoryFilters = { "-**/vendor" },
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
