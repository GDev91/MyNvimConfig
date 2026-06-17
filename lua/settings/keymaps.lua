local set = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

set("n", "<C-h>", "<C-w>h", { desc = "Focus window left" })
set("n", "<C-j>", "<C-w>j", { desc = "Focus window down" })
set("n", "<C-k>", "<C-w>k", { desc = "Focus window up" })
set("n", "<C-l>", "<C-w>l", { desc = "Focus window right" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")
set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })
set("n", "<leader>x", "<CMD>bdelete<CR>", { desc = "Delete current buffer" })
set("n", "<leader>b", "<CMD>buffers<CR>", { desc = "Show buffer list" })
set("n", "<leader>l", "<CMD>bNext<CR>", { desc = "Next buffer" })
set("n", "<leader>h", "<CMD>bprevious<CR>", { desc = "Previous buffer" })
set("n", "<leader><leader>", "<CMD>map <leader><CR>", { desc = "Showa full shortcut list" })
set("n", "<leader>r", "<CMD>RunCode<CR>", { desc = "Run current file" })
set("n", "<leader>F", "<CMD>FzfLua<CR>", { desc = "Fzf search" })
