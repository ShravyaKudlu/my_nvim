-- Helper to load the cached theme
local function get_saved_theme()
  local path = vim.fn.stdpath("config") .. "/lua/config/theme_cache.lua"
  local f = loadfile(path)
  if f then
    return f()
  end
  return "tokyonight" -- Default if no cache exists
end

return {
  {
    "tinted-theming/base16-vim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_saved_theme(),
    },
  },
}
