local opt = vim.opt
local cmd = vim.cmd

-- General
opt.clipboard = "unnamedplus"
opt.mouse = "a"

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- UI & Display
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.termguicolors = true
opt.guicursor = {
	"n-v-c:block",
	"i-ci-ve:ver25",
	"r-cr:hor20",
	"o:hor50",
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
	"sm:block-blinkwait175-blinkoff150-blinkon175",
}

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Undo & Backup
opt.undofile = true
opt.swapfile = false

-- Theme Setup
cmd.colorscheme("turboc-pascal")

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = highlight_group,
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 150,
		})
	end,
})
