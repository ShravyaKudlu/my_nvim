return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  -- This forces the UI selection before anything else can complain
  init = function()
    vim.ui.select = function(...)
      require("snacks").picker.select(...)
    end
  end,
  opts = {
    -- Basic UI
    input = { enabled = true },
    notifier = { enabled = true },
    picker = {
      enabled = true,
      ui_select = true,
    },
    -- This is the specific setting that stops the explorer on startup
    explorer = { enabled = false },

    image = { enabled = true },
    statuscolumn = { enabled = true },
    terminal = {
      win = {
        position = "float",
        backdrop = 60,
        width = 0.8,
        height = 0.8,
        border = "rounded",
      },
    },
    dashboard = {
      preset = {
        header = [[
▄▄▄▄▄▄▄▄▄                ▄▄▄▄▄▄▄▄▄    ▄▄▄   ▄▄▄   beautiful 
▀▀▀███▀▀▀                ▀▀▀███▀▀▀    ███   ███             
   ███ ████▄ ██ ██ ▄█▀█▄    ███ ▄███▄ ▀███▄███▀ ▄███▄ ██ ██ 
   ███ ██ ▀▀ ██ ██ ██▄█▀    ███ ██ ██   ▀███▀   ██ ██ ██ ██ 
   ███ ██    ▀██▀█ ▀█▄▄▄    ███ ▀███▀    ███    ▀███▀ ▀██▀█ 
                                                            
 [████████████████████████████████████░░░░░░░░░░░░░░░░░░░░]
          ]],
      },
    },
    styles = {
      terminal = { position = "float" },
    },
  },
}
