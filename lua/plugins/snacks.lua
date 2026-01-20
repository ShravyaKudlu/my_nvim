return {
  "folke/snacks.nvim",
  opts = {
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
                                                          
▄▄▄▄▄▄▄▄▄               ▄▄▄▄▄▄▄▄▄    ▄▄▄   ▄▄▄   beautiful  
▀▀▀███▀▀▀               ▀▀▀███▀▀▀    ███   ███             
   ███ ████▄ ██ ██ ▄█▀█▄   ███ ▄███▄ ▀███▄███▀ ▄███▄ ██ ██ 
   ███ ██ ▀▀ ██ ██ ██▄█▀   ███ ██ ██   ▀███▀   ██ ██ ██ ██ 
   ███ ██    ▀██▀█ ▀█▄▄▄   ███ ▀███▀    ███    ▀███▀ ▀██▀█ 
                                                           
                                                           
          ]],
      },
    },
    picker = {
      sources = {
        explorer = {
          auto_close = true, -- Closes the explorer after you pick a file
          layout = { layout = { position = "left" } },
        },
      },
    },
    -- This section ensures the 'float' style itself is globally centered
    styles = {
      terminal = {
        position = "float",
      },
    },
  },
}
