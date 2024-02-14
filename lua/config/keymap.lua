vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "<S-h>", "<C-w>h")
vim.keymap.set("n", "<S-l>", "<C-w>l")
vim.keymap.set("n", "<S-j>", "<C-w>j")
vim.keymap.set("n", "<S-k>", "<C-w>k")

vim.keymap.set("n", "<S-n>", ":bn<CR>")
vim.keymap.set("n", "<S-p>", ":bp<CR>")
vim.keymap.set("n", "<C-d>", ":bd<CR>")
