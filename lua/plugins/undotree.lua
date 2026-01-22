-- lua/plugins/telescope-undo.lua
return {
  {
    "debugloop/telescope-undo.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("undo")
    end,
    keys = {
      { "<leader>U", "<cmd>Telescope undo<CR>", desc = "Undo History" },
    },
  },
}
