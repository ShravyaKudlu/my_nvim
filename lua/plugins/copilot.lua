return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true, -- Shows ghost text as you type
        keymap = {
          -- By setting these to Alt keys, we ensure they NEVER
          -- interfere with your LSP's Tab or Enter behavior.
          accept = "<A-a>",
          accept_word = "<A-w>",
          accept_line = "<A-l>",
          next = "<A-]>",
          prev = "<A-[>",
          dismiss = "<C-]>",
        },
      },
      -- We disable the 'panel' to keep the UI clean and avoid LSP conflicts.
      panel = { enabled = false },
    },
  },
}
