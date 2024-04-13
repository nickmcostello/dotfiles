return {
	{
		'numToStr/Comment.nvim',
		lazy = false,
	},
	{
		"sontungexpt/witch",
		name = "witch",
		priority = 1000,
		lazy = false,
		config = function(_, opts)
			require("witch").setup(opts)
		end
	},
	{
		'm4xshen/autoclose.nvim',
		event = "InsertEnter",
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		lazy = false,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "dracula",
					icons_enabled = false,
				}
			})
		end
	},
	{
		'nvim-telescope/telescope.nvim',
		lazy = false,
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
		},
		config = function()
			require("telescope").setup()
		end
	},
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },

	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{ 'hrsh7th/cmp-nvim-lsp' },
		},
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{ 'L3MON4D3/LuaSnip' },
		}
	},
	{
		'stevearc/conform.nvim',
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt", "goimports" },
				vim = { "vimfmt" },
				sh = { "shfmt" },
				yaml = { "yq" },
				json = { "jq" },
				toml = { "tomllint" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				jsx = { "prettier" },
				tsx = { "prettier" },
				graphql = { "prettier" },
				markdown = { "prettier" },
				rust = { "rustfmt" },
			}
		},
	},
	{
		"github/copilot.vim"
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	}
}
