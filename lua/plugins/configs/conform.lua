local opts = {
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
		go = { "goimports", "gofmt" },
	},
	format_on_save = { timeout_ms = 500, lsp_fallback = true },
}

return opts
