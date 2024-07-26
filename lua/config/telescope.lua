local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[s]earch [r]epeat" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[s]earch [f]iles" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[s]earch [b]uffers" })

vim.keymap.set("n", "<leader>gf", builtin.live_grep, { desc = "[g]rep [f]iles" })

