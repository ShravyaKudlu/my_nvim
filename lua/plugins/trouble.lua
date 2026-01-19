return {
  "folke/trouble.nvim",
  opts = {
    focus = true, -- Jumps cursor to Trouble when it opens
    modes = {
      diagnostics = {
        auto_close = true, -- Closes when you jump to a location
      },
      lsp = {
        win = { position = "right" },
      },
    },
    -- This ensures any 'jump' action closes the specialized window
    actions = {
      jump = {
        action = function(view)
          view:jump()
          view:close()
        end,
      },
    },
  },
}
