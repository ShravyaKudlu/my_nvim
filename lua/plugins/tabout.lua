return {
  {
    "abecodes/tabout.nvim",
    event = "InsertCharPre",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp",
    },
    opts = {
      tabkey = "<A-l>",
      backwards_tabkey = "<A-h>",
      act_as_tab = false,
      act_as_shift_tab = false,
      completion = false,
      enable_backwards = true,
      ignore_beginning = true,
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
      },
    },
  },
}
