return {
	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls", "tsserver"
			},
			handlers = {
				function (server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup {}
				end,

				["lua_ls"] = function ()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								runtime = { version = 'LuaJIT' },
								workspace = {
									checkThirdParty = false,
									library = {
										'${3rd}/luv/library',
										unpack(vim.api.nvim_get_runtime_file('', true)),
									},
								},
								completion = {
									callSnippet = 'Replace',
								},
							},
						},
					})
				end
			}
		})
		local cmp = require('cmp')
		cmp.setup({
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end
			},
			mapping = cmp.mapping.preset.insert({
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
				{ name = 'buffer' },
			})
		})

		local lspconfig = require('lspconfig')

		local caps = require("cmp_nvim_lsp").default_capabilities()

		lspconfig["tsserver"].setup({
			capabilities = caps
		})
	end
}
