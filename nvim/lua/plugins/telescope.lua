return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
	},
	config = function()
		require("telescope").setup()
		local map = vim.keymap.set
		map("n", "<leader>km", require("telescope.builtin").keymaps, { desc = "[K]ey[m]aps" })
		map("n", "<leader>ht", require("telescope.builtin").help_tags, { desc = "[H]elp [T]ags" })

		map("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
		map("n", "<leader>lg", require("telescope.builtin").live_grep, { desc = "[L]ive [G]rep" })
	end
}
