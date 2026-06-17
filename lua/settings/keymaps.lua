local set = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Quality of life
set("n", "<C-h>", "<C-w>h", { desc = "Focus window left" })
set("n", "<C-j>", "<C-w>j", { desc = "Focus window down" })
set("n", "<C-k>", "<C-w>k", { desc = "Focus window up" })
set("n", "<C-l>", "<C-w>l", { desc = "Focus window right" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")
set("n", "<leader><leader>", "<CMD>map <leader><CR>", { desc = "Show full shortcut list" })

--File management
set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })
set("n", "<leader>-", "<CMD>Oil --float<CR>", { desc = "Open Oil (floating)" })
--Secondary
set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "Open side explorer" })

--Buffers
set("n", "<leader>x", "<CMD>bdelete<CR>", { desc = "Delete current buffer" })
set("n", "<leader>b", "<CMD>buffers<CR>", { desc = "Show buffer list" })
set("n", "<leader>l", "<CMD>bNext<CR>", { desc = "Next buffer" })
set("n", "<leader>h", "<CMD>bprevious<CR>", { desc = "Previous buffer" })

--Debugging
set("n", "<leader>r", "<CMD>RunCode<CR>", { desc = "Run current file" })

--FzfLua
set("n", "<leader>F", "<CMD>FzfLua<CR>", { desc = "FzfLua options" })
set("n", "<leader>ff", "<CMD>FzfLua files<CR>", { desc = "Search files" })
set("n", "<leader>fc", "<CMD>FzfLua colorschemes<CR>", { desc = "Browse installed colorschemes" })

--ToggleTerm
set("n", "<leader>t", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal" })
set("t", "<Esc>", "<C-\\><C-n>", { silent = true })
