return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.keymap.set({ "n", "t" }, "<C-t>", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle floating term" })

		vim.api.nvim_set_keymap(
			"n",
			"<C-g>",
			"<cmd>lua _lazygit_toggle()<CR>",
			{ desc = "Toggle lazygit", noremap = true, silent = true }
		)

		require("toggleterm").setup({
			auto_scroll = true, -- automatically scroll to the bottom on terminal output
		})
	end,
}
