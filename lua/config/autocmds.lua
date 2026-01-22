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
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    })
  end,
})

local cache_dir = vim.fn.stdpath("config") .. "/lua/config"
local cache_file = cache_dir .. "/theme_cache.lua"

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local scheme = vim.g.colors_name
    if not scheme then
      return
    end

    if vim.fn.isdirectory(cache_dir) == 0 then
      vim.fn.mkdir(cache_dir, "p")
    end
    local file = io.open(cache_file, "w")
    if file then
      file:write("return '" .. scheme .. "'")
      file:close()
    end
  end,
})

local function no_italic_loop()
  local highlights = vim.api.nvim_get_hl(0, {})
  for name, hl in pairs(highlights) do
    if hl.italic then
      hl.italic = false
      vim.api.nvim_set_hl(0, name, hl)
    end
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.schedule(no_italic_loop)
  end,
})

vim.defer_fn(function()
  local ok, theme = pcall(dofile, cache_file)
  if ok and type(theme) == "string" then
    vim.cmd.colorscheme(theme)
  end
  no_italic_loop()
end, 100)
