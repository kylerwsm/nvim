return {
	"akinsho/bufferline.nvim",
	lazy = false,
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{
			"<leader>b",
			"<cmd>BufferLinePick<CR>",
			desc = "Buffer picker",
		},
		{
			"<tab>",
			"<cmd>BufferLineCycleNext<CR>",
			desc = "Buffer next",
		},
		{
			"<S-tab>",
			"<cmd>BufferLineCyclePrev<CR>",
			desc = "Buffer previous",
		},
	},
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				mode = "buffers",
				offsets = {
					{
						filetype = "NvimTree",
						text = "Explorer",
						highlight = "Directory",
					},
				},
			},
		})
	end,
}
