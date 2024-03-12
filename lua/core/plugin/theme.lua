local theme_table = {
  catppuccin = {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte",
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  github = {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup({})
      vim.cmd('colorscheme github_light_default')
    end,
  },
}

local selected_theme = "catppuccin"

return theme_table[selected_theme]
