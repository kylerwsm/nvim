return {
	"folke/which-key.nvim",
	lazy = false,
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function(_, opts)
		require("which-key").setup(opts)
		require("which-key").register({
			["<leader>g"] = { name = "Gitsigns" },
			["<leader>h"] = { name = "Harpoon" },
		})
	end,
}
