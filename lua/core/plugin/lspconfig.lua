local defaultLspTable =
	{ "pyright", "jsonls", "terraformls", "rust_analyzer", "bashls", "tsserver", "eslint", "tailwindcss" }

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{
			"<space>d",
			vim.diagnostic.open_float,
			desc = "Show diagnostic float",
		},
		{
			"[d",
			vim.diagnostic.goto_prev,
			desc = "Show previous diagnostic",
		},
		{
			"d]",
			vim.diagnostic.goto_next,
			desc = "Show next diagnostic",
		},
		{
			"<leader>q",
			vim.diagnostic.setloclist,
			desc = "Show diagnostic location list",
		},
	},
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
