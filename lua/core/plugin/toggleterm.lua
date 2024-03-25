return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    {
      "<C-t>",
      [[<cmd>ToggleTerm direction=float<CR>]],
      mode = { "n", "t" },
      desc = "Toggle floating term",
    },
    {
      "<C-g>",
      [[<cmd>lua _lazygit_toggle()<CR>]],
      mode = { "n", "t" },
      desc = "Toggle lazygit",
    },
    {
      "<Esc>",
      [[<C-\><C-n>]],
      mode = "t",
      desc = "Exit terminal mode",
    },
  },
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    require("toggleterm").setup({
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
    })
  end,
}
