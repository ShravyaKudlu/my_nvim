return {
  "neovim/nvim-lspconfig",
  opts = {
    -- 1. Configure how diagnostics look globally
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
        -- This is the key: we hide the message text globally
        format = function()
          return ""
        end,
      },
      severity_sort = true,
    },
    -- 2. Your existing server list
    servers = {
      pyright = {},
      vtsls = {},
      lua_ls = {},
      html = {},
      cssls = {},
    },
  },
}
