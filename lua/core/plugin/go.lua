return {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    lsp_document_formatting = true, -- make use of conform for formatting
    diagnostic = false,             -- make use of lspconfig for diagnostic setup
  },
  config = function(_, opts)
    require("go").setup(opts)
  end,
  event = { "CmdlineEnter" },
  ft = { "go", 'gomod' },
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
