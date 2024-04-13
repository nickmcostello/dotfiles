local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex, { desc = "Open [Ex]plorer" })
map("n", "<leader>sv", "<C-w>v", { desc = "[S]plit Window [V]ertical" })


map("n", "<leader>od", require("vim.diagnostic").open_float, { desc = "[O]pen [D]iagnostics" })

map("n", "<leader>ca", require("vim.lsp.buf").code_action, { desc = "[C]ode [A]ction" })

map("n", "<leader>ho", require("vim.lsp.buf").hover, { desc = "[H]over [O]ver" })
map("n", "<leader>nn", require("vim.lsp.buf").rename, { desc = "[N]ew [Name]" })
map("n", "<leader>gr", require("vim.lsp.buf").references, { desc = "[G]o to [R]eference" })


map("n", "<leader>gd", function()
	require("vim.lsp.buf").definition()
	vim.cmd [[normal! zz]]
end, { desc = "[G]o [D]efinition" })

map("n", "<leader>oi", function()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = ""
	}
	vim.lsp.buf.execute_command(params)
end, { desc = "[O]rganize [I]mports" })
