return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>fm",
      function()
        require("conform").format()
      end,
      desc = "LSP formatting",
    },
  },
  opts = {
    formatters = {
      grabbyright = {
        command = "grabbyright",
        args = { "$FILENAME" },
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
      go = { "goimports", "gofmt" },
      sh = { "shfmt" },
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
}
