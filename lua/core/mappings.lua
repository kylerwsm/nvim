vim.g.mapleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

vim.keymap.set("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "LSP formatting" })

-- Toggle term
vim.keymap.set("n", "<C-i>", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating term" })
vim.keymap.set("t", "<Esc>", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating term" })

-- Nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvimtree" })
