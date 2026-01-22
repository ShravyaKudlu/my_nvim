return {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gvdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
  },
  keys = {
    { "<leader>gxs", "<cmd>Git<cr>", desc = "Fugitive Status" },
    { "<leader>gxv", "<cmd>Gvdiffsplit!<cr>", desc = "Vertical 3-way Diff" },
    { "<leader>gxh", "<cmd>diffget //2<cr>", desc = "Conflict: Keep Left (Target)" },
    { "<leader>gxl", "<cmd>diffget //3<cr>", desc = "Conflict: Keep Right (Merge)" },
    { "<leader>gxa", "<cmd>Gwrite<cr>", desc = "Stage (Add) Current File" },
    { "<leader>gxr", "<cmd>Gread<cr>", desc = "Reset (Read) Current File" },
  },
}
