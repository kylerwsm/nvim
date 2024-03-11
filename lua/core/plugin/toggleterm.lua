return {
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		vim.keymap.set({ "n", "t" }, "<C-t>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle floating term" }) -- toggle term in normal and terminal mode

		require("toggleterm").setup({
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
		})
	end,
}
