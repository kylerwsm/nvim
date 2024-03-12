local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })

map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvimtree" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "LSP formatting" })

map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Buffer New" })
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "Buffer Goto next" })
map("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Buffer Goto prev" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Buffer Close" })

require("core.mapping.telescope")
require("core.mapping.lspconfig")
