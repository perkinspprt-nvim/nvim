-- Plugins: Colorschemes
-- https://github.com/rafi/vim-config

return {

	{
		'rafi/theme-loader.nvim',
		lazy = false,
		priority = 99,
		opts = { initial_colorscheme = 'nordic' },
	},

	{ 'rafi/neo-hybrid.vim',},
	{ 'rafi/awesome-vim-colorschemes', lazy = false },
	{ 'AlexvZyl/nordic.nvim', name = "nordic", lazy = false, priority = 100},
	{ 'folke/tokyonight.nvim', opts = { style = 'night' } },
	{ 'rebelot/kanagawa.nvim' },
	{ 'olimorris/onedarkpro.nvim' },
	{ 'EdenEast/nightfox.nvim', name = "nightfox" },
	{ 'nyoom-engineering/oxocarbon.nvim', name = "oxocarbon" },
	{'shaunsingh/solarized.nvim', name = "solarized", lazy = false},
	{ 'NTBBloodbath/doom-one.nvim',
		priority = 100,
		lazy = false,
		name = "doom-one",
		setup = function()
		vim.g.doom_one_cursor_coloring = false
		vim.g.doom_one_enable_treesitter = true
    vim.g.doom_one_diagnostics_text_color = false
		vim.g.doom_one_transparent_background = true

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = true
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
		end,
	},
	{ 'neanias/everforest-nvim',
		name = 'everforest',
		priority = 100,
	},
	{
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
	name = "solarized-osaka"
	},

	{
		'ribru17/bamboo.nvim',
		lazy = true,
		config = function()
			require('bamboo').setup({})
			require('bamboo').load()
		end,
	},

	{
		'catppuccin/nvim',
		lazy = false,
		name = 'catppuccin',
		opts = {
			flavour = 'macchiato', -- latte, frappe, macchiato, mocha
			dim_inactive = { enabled = false },
			integrations = {
				aerial = true,
				alpha = true,
				cmp = true,
				dashboard = true,
				flash = true,
				gitsigns = true,
				headlines = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				leap = true,
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { 'undercurl' },
						hints = { 'undercurl' },
						warnings = { 'undercurl' },
						information = { 'undercurl' },
					},
				},
				navic = { enabled = true, custom_bg = 'lualine' },
				neotest = true,
				neotree = true,
				noice = true,
				notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
}
