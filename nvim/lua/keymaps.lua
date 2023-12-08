map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex, { desc = "Open [Ex]plorer"})

map("n", "<leader>km", require("telescope.builtin").keymaps, { desc = "See [K]ey[m]aps"})
map("n", "<leader>ht", require("telescope.builtin").help_tags, { desc = "See [H]elp [T]ags" })

map("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles"})
map("n", "<leader>lg", require("telescope.builtin").live_grep, { desc = "[L]ive [G]rep"})

map("n", "<leader>od", require("vim.diagnostic").open_float, {	desc = "[O]pen [D]iagnostics" })

