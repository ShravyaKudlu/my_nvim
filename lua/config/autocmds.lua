-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Show full diagnostics in a window when you hold the cursor on a line
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      close_events = { "CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre" },
      border = "rounded", -- Makes the popup look much better
      source = "always", -- Shows which LSP (pyright/vtsls) the error is from
      prefix = " ",
      scope = "cursor",
    })
  end,
})

-- Save the colorscheme and strip italics whenever it changes
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local scheme = vim.g.colors_name
    if scheme then
      -- 1. Your existing Save logic
      local path = vim.fn.stdpath("config") .. "/lua/config/theme_cache.lua"
      local file = io.open(path, "w")
      if file then
        file:write("return '" .. scheme .. "'")
        file:close()
      end

      -- 2. New Strip Italics logic
      local hl_groups = vim.api.nvim_get_hl(0, {})
      for name, hl in pairs(hl_groups) do
        if hl.italic then
          -- Preserve everything (like bold), but force italic to false
          vim.api.nvim_set_hl(0, name, vim.tbl_extend("force", hl, { italic = false }))
        end
      end
    end
  end,
})
