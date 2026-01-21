return {
  "kawre/leetcode.nvim",
  opts = {
    arg = "leetcode.com",
    lang = "python3",
    storage = {
      home = "/home/shravyashanbhogue/leetcode",
      cache = vim.fn.stdpath("cache") .. "/leetcode",
    },
    image_support = true,
  },
  keys = {
    { "<leader>zz", "<cmd>Leet<cr>", desc = "LeetCode Menu" },
    { "<leader>zl", "<cmd>Leet list<cr>", desc = "LeetCode List" },
    { "<leader>zt", "<cmd>Leet test<cr>", desc = "LeetCode Test" },
    { "<leader>zs", "<cmd>Leet submit<cr>", desc = "LeetCode Submit" },
    { "<leader>zh", "<cmd>Leet hint<cr>", desc = "LeetCode Hint" },
    { "<leader>zd", "<cmd>Leet desc<cr>", desc = "LeetCode Description" },
    { "<leader>zc", "<cmd>Leet console<cr>", desc = "LeetCode Console" },
    { "<leader>zi", "<cmd>Leet info<cr>", desc = "LeetCode Info" },
  },
}
