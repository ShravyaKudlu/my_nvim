return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  init = function()
    vim.ui.select = function(...)
      require("snacks").picker.select(...)
    end
  end,
  opts = {
    input = { enabled = true },
    notifier = { enabled = true },
    picker = {
      enabled = true,
      ui_select = true,
      sources = {
        explorer = {
          auto_close = true,
          jump = { close = true },
        },
      },
    },
    explorer = { enabled = true },

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
