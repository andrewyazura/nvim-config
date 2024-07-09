return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>ls", builtin.resume, { desc = "[l]ast [s]earch" })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]uffers" })

    vim.keymap.set("n", "<leader>gf", builtin.live_grep, { desc = "[g]rep [f]iles" })
  end
}
