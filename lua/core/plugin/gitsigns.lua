return {
	"lewis6991/gitsigns.nvim",
	keys = {
		{
			"<leader>gs",
			[[<cmd>lua require("gitsigns").stage_hunk()<CR>]],
			desc = "Stage hunk",
		},
		{
			"<leader>gu",
			[[<cmd>lua require("gitsigns").undo_stage_hunk()<CR>]],
			desc = "Undo stage hunk",
		},
		{
			"<leader>gr",
			[[<cmd>lua require("gitsigns").reset_hunk()<CR>]],
			desc = "Reset hunk",
		},
		{
			"<leader>gp",
			[[<cmd>lua require("gitsigns").preview_hunk()<CR>]],
			desc = "Preview hunk",
		},
		{
			"<leader>gb",
			[[<cmd>lua require("gitsigns").blame_line()<CR>]],
			desc = "Blame line",
		},
	},
	config = function()
		require("gitsigns").setup({})
	end,
}
