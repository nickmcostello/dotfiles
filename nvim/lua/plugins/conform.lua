return {
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
}
