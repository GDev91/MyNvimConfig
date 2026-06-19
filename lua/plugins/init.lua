vim.pack.add({
	--Formatting and lsp
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/m4xshen/autoclose.nvim" },
	{ src = "https://github.com/ms-jpq/coq_nvim" },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },

	--Debugging
	{ src = "https://github.com/CRAG666/code_runner.nvim" },

	--UI tools
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/sindrets/diffview.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/goolord/alpha-nvim" },

	--UI improvements
	{ src = "https://github.com/nvim-mini/mini.icons" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/malewicz1337/oil-git.nvim" },
	{ src = "https://github.com/refractalize/oil-git-status.nvim" },

	--Colorschemes
	{ src = "https://github.com/tssm/c64-vim-color-scheme" },
	{ src = "https://github.com/letorbi/vim-colors-modern-borland" },
	{ src = "https://github.com/caglartoklu/borlandp.vim" },
	{ src = "https://github.com/ikouchiha47/turboc.nvim" },
})

-- Configs
require("oil").setup({
	default_file_explorer = true,
	delete_to_trash = true,
	skip_confirm_for_simple_edits = true,
	win_options = {
		signcolumn = "yes:2",
		wrap = true,
	},
	view_options = {
		show_hidden = true,
		natural_order = fast,
		is_always_hidden = function(name, _)
			return name == ".git"
		end,
	},
	float = {
		padding = 2,
		max_width = 0,
		max_height = 0,
		border = "rounded", -- Options: "single", "double", "shadow", "rounded", or table of chars
		win_options = {
			winblend = 1, -- Set to 0 to remove transparency if you find it ugly
			-- Optional: Highlight groups to style normal float background and borders
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
	},
})

pcall(function()
	require("oil-git").setup({
		show_file_highlights = true,
		show_directory_highlights = true,
		show_file_symbols = true,
		symbol_position = "eol",
	})
end)

require("autoclose").setup()

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier", stop_after_first = true },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
require("code_runner").setup({
	filetype = {
		javascript = "cd $dir && node $fileNameWithoutExt",
		typescript = "deno run",
	},
})
local lspconfig = require("lspconfig")

require("oil-git").setup()
require("oil-git-status").setup()
require("nvim-tree").setup()
require("toggleterm").setup()
require("bufferline").setup({})

local status_alpha, alpha = pcall(require, "alpha")
local status_theme, dashboard = pcall(require, "alpha.themes.dashboard")

dashboard.section.header.val = {
	[[   _____           _______         .__           ]],
	[[  /     \  ___.__. \      \ ___  __|__|  _____   ]],
	[[ /  \ /  \<   |  | /   |   \\  \/ /|  | /     \  ]],
	[[/    Y    \\___  |/    |    \\   / |  ||  Y Y  \ ]],
	[[\____|__  // ____|\____|__  / \_/  |__||__|_|  / ]],
	[[        \/ \/             \/                 \/  ]],
	[[                                                 ]],
}

if status_alpha and status_theme then
	alpha.setup(dashboard.config)
else
	vim.notify("Failed to load alpha-nvim or its theme", vim.log.levels.ERROR)
end
