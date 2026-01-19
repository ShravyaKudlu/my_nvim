return {
  "stevearc/conform.nvim",
  opts = {
    -- 1. Map filetypes to formatters
    formatters_by_ft = {
      -- Python: Use black (standard) or ruff
      python = { "black" },
      -- JS/TS: Use prettierd for speed
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      -- Add future languages here easily:
      -- go = { "gofmt" },
      lua = { "stylua" },
      html = { "prettierd" },
      cssls = { "prettierd" },
    },
    -- 2. Global "Format on Save" logic
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true, -- Use LSP if the formatter isn't installed
    },
  },
}
