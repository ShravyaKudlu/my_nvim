return {
  -- 1. The Bridge (translator)
  {
    "saghen/blink.compat",
    lazy = true,
    opts = {},
    -- This version helps ensure it stays compatible with blink
    version = "*",
  },

  -- 2. The Engine
  {
    "saghen/blink.cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "saghen/blink.compat",
    },
    version = "*",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "emoji" },
        providers = {
          emoji = {
            name = "Emoji",
            module = "blink.compat.source",
            score_offset = 100,
          },
        },
      },
    },
  },
}
