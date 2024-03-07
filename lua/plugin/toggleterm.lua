return {
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
		})
	end,
}
