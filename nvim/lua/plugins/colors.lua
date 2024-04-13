return {
	{
		"sontungexpt/witch",
		priority = 1000,
		lazy = false,
	},
	{
		"oxfist/night-owl.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			vim.cmd.colorscheme("night-owl")
		end
	}
}
