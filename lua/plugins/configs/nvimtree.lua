-- Automatically open file upon creation
local api = require("nvim-tree.api")
api.events.subscribe(api.events.Event.FileCreated, function(file)
	vim.cmd("edit " .. file.fname)
end)

local opts = {
	renderer = {
		root_folder_label = false,
		highlight_git = false,
		highlight_opened_files = "none",

		indent_markers = {
			enable = false,
		},

		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = false,
			},

			glyphs = {
				default = "󰈚",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
}

return opts
