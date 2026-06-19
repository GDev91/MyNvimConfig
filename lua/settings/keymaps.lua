local set = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Quality of life
set("n", "<C-h>", "<C-w>h", { desc = "Focus window left" })
set("n", "<C-j>", "<C-w>j", { desc = "Focus window down" })
set("n", "<C-k>", "<C-w>k", { desc = "Focus window up" })
set("n", "<C-l>", "<C-w>l", { desc = "Focus window right" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")
set("n", "<leader>hs", "<CMD>map <leader><CR>", { desc = "Show full shortcut list" })

--File management
set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })
set("n", "<leader>-", "<CMD>Oil --float<CR>", { desc = "Open Oil (floating)" })
--Secondary
set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "Open side explorer" })

--Buffers
set("n", "<Tab>", "<CMD>BufferLineCycleNext<CR>", { desc = "Next buffer", noremap = true, silent = true })
set("n", "<S-Tab>", "<CMD>BufferLineCyclePrev<CR>", { desc = "Previous buffer", noremap = true, silent = true })
set("n", "<C-S-Right>", "<CMD>BufferLineMoveNext<CR>", { desc = "Move buffer right", noremap = true, silent = true })
set("n", "<C-S-Left>", "<CMD>BufferLineMovePrev<CR>", { desc = "Move buffer left", noremap = true, silent = true })
set("n", "<leader>x", "<CMD>bd<CR>", { desc = "Delete buffer" })

for i = 1, 9 do
	set("n", "<leader><leader>" .. i, "<CMD>BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to buffer " .. i })
end

--Debugging
set("n", "<leader>r", "<CMD>RunCode<CR>", { desc = "Run current file" })

--FzfLua
set("n", "<leader>F", "<CMD>FzfLua<CR>", { desc = "FzfLua options" })
set("n", "<leader>ff", "<CMD>FzfLua files<CR>", { desc = "Search files" })
set("n", "<leader>fc", "<CMD>FzfLua colorschemes<CR>", { desc = "Browse installed colorschemes" })

--ToggleTerm
set("n", "<leader>t", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal" })
set("t", "<Esc>", "<C-\\><C-n>", { silent = true })
