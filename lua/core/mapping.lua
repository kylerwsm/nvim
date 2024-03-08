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

vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", { desc = "Exit nvim" })

vim.keymap.set("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "LSP formatting" })

vim.keymap.set("n", "<C-i>", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating term" }) -- toggle term in normal and terminal mode
vim.keymap.set("t", "<Esc>", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating term" }) -- toggle term in terminal mode
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvimtree" }) -- toggles nvimtree
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "LSP code action" }) -- show lsp code action
vim.keymap.set("n", "<leader>ww", "<cmd>vsplit<CR>", { desc = "Vertically split current window" }) -- split current window left and right
vim.keymap.set("n", "<leader>wx", "<C-w>q", { desc = "Close current window" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find string in files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Open help window" })