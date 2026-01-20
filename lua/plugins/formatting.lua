return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      lua = { "stylua" },
      html = { "prettierd" },
      css = { "prettierd" },
    },
    default_format_opts = {
      timeout_ms = 3000,
      lsp_format = "fallback",
    },
  },
}
