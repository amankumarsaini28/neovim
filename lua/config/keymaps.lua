-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--  then
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.api.nvim_set_keymap("n", "<leader>gs", ":Neogit<CR>", { noremap = true, silent = true }) -- Open Neogit status
vim.api.nvim_set_keymap("n", "<leader>ct", ":Telescope colorscheme<CR>", { noremap = true, silent = true }) -- Open Theme List

vim.api.nvim_set_keymap(
  "n",
  "<leader>yp",
  [[:lua vim.fn.setreg('+', vim.fn.expand('%:.'))<CR>]],
  { noremap = true, silent = true }
)
--vim.api.nvim_set_keymap(
--  "n",
--  "<leader>yp",
--  [[:lua vim.fn.setreg('+', vim.fn.expand('%:p'))<CR>]],
--  { noremap = true, silent = true }
--) -- yank path of file

-- disable irritating mouse scroll on nvim

-- Disable mouse wheel scroll up
vim.api.nvim_set_keymap("n", "<ScrollWheelUp>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-ScrollWheelUp>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-ScrollWheelUp>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-ScrollWheelUp>", "<Nop>", { noremap = true, silent = true })
-- Disable mouse wheel scroll down
vim.api.nvim_set_keymap("n", "<ScrollWheelDown>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-ScrollWheelDown>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-ScrollWheelDown>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-ScrollWheelDown>", "<Nop>", { noremap = true, silent = true })
