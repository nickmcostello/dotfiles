return {
	'nvim-treesitter/nvim-treesitter',
	name = "treesitter",
	lazy = false,
	build = ':TSUpdate',
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua", "vim", "vimdoc", "query", "go", "javascript", "typescript",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
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
}
