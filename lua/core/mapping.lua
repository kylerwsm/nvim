local map = vim.keymap.set

map("n", "<C-i>", "<C-i>", { desc = "Decouple with tab" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights" })
map({ "i", "n" }, "<C-s>", "<cmd>w<CR>", { desc = "Save buffer" })

map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
