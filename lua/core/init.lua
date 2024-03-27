vim.g.mapleader = " "

vim.opt.scrolloff = 999 -- center cursor in window
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.cursorline = true -- highlight the current line
vim.opt.showtabline = 0 -- always show tabs

vim.opt.laststatus = 3 -- global statusline
vim.opt.showmode = false

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.fillchars = { eob = " " }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"

-- Numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

-- disable nvim intro
vim.opt.shortmess:append("sI")

require("core.plugin")
require("core.mapping")
require("core.autocmd")
