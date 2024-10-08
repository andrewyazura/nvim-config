local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():add()
end, { desc = "add" })
vim.keymap.set("n", "<leader>hl", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "list" })

vim.keymap.set("n", "<leader>h1", function()
	harpoon:list():select(1)
end, { desc = "1" })
vim.keymap.set("n", "<leader>h2", function()
	harpoon:list():select(2)
end, { desc = "2" })
vim.keymap.set("n", "<leader>h3", function()
	harpoon:list():select(3)
end, { desc = "3" })
vim.keymap.set("n", "<leader>h4", function()
	harpoon:list():select(4)
end, { desc = "4" })

vim.keymap.set("n", "<leader>hp", function()
	harpoon:list():prev()
end, { desc = "prev" })
vim.keymap.set("n", "<leader>hn", function()
	harpoon:list():next()
end, { desc = "next" })
