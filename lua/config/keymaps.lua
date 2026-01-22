-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
vim.keymap.set("n", "Y", "y$", { desc = "yank until the end of the line" })
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Undo in insert mode" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { desc = "Redo in insert mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "hh", "<Esc>^", { desc = "Insert → start of line" })
vim.keymap.set("i", "ll", "<Esc>$", { desc = "Insert → end of line" })
vim.keymap.set("i", "<C-Left>", "<Esc>^", { desc = "Insert → start of line" })
vim.keymap.set("i", "<C-Right>", "<Esc>$", { desc = "Insert → end of line" })
vim.keymap.set("i", "<C-Down>", "<Esc>", { desc = "Insert → normal mode" })
vim.keymap.del({ "n", "t" }, "<C-/>")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle one line comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })
vim.keymap.del("n", "gc")
vim.keymap.del("n", "gcc")
vim.keymap.del("v", "gc")
vim.keymap.set({ "n", "t" }, "<C-.>", function()
  Snacks.terminal.toggle()
end, { desc = "Toggle Terminal" })
local dial = require("dial.map")
vim.keymap.set("n", "<C-z>", dial.inc_normal(), { desc = "Increment number" })
vim.keymap.set("v", "<C-z>", dial.inc_visual())
vim.keymap.del("n", "g<C-a>")
vim.keymap.del("n", "g<C-x>")
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all text in buffer" })
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.set("n", "<leader>cd", "<cmd>FzfLua lsp_document_diagnostics<CR>", { desc = "Fzf Diagnostics" })

wk.add({
  { "<leader>gx", group = "Fugitive/Conflicts" },
})

vim.keymap.set("n", "<leader>gd", function()
  Snacks.picker.git_diff()
end, {
  desc = "Git difference",
})

vim.keymap.set("n", "<leader>gl", function()
  local path = Snacks.git.get_root() or vim.fn.getcwd()
  Snacks.lazygit.open({
    cwd = path,
    args = { "log", "--screen-mode", "full" },
  })
end, { desc = "Git Log (LazyGit)" })
