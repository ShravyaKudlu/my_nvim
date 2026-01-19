-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "Y", "y$", { desc = "yank until the end of the line" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all text in buffer" })
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Undo in insert mode" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { desc = "Redo in insert mode" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.del({ "n", "t" }, "<C-/>")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle blocks of comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment" })
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })
vim.keymap.set({ "n", "t" }, "<C-.>", function()
  Snacks.terminal.toggle()
end, { desc = "Toggle Terminal" })
