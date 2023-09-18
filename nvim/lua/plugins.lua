return {
	{
		'numToStr/Comment.nvim',
		event = "BufEnter",
		config = function()
			require("Comment").setup()
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
		'Mofiqul/dracula.nvim',
		priority = 1000,
		lazy = false,
		config = function()
			vim.cmd("colorscheme dracula")
		end
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
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua", "vim", "vimdoc", "query", "go",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				},
				incremental_selection = {
				  enable = true,
				  keymaps = {
					init_selection = "<c-space>",
					node_incremental = "<c-space>",
					scope_incremental = "grc",
					node_decremental = "grm",
				  }
				},
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
	  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

	  {'williamboman/mason.nvim'},
	  {'williamboman/mason-lspconfig.nvim'},

	  {
		'neovim/nvim-lspconfig',
		dependencies = {
		  {'hrsh7th/cmp-nvim-lsp'},
		},
	  },

	  {
		'hrsh7th/nvim-cmp',
		dependencies = {
		  {'L3MON4D3/LuaSnip'},
		}
	  }
}
