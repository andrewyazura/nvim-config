vim.g.mapleader = " "

local harpoon = require('harpoon')

harpoon:setup({})
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = "Add buffer to harpoon" })

vim.keymap.set('n', '<C-j>', function() harpoon:list():prev() end, { desc = "Previous harpoon buffer" })
vim.keymap.set('n', '<C-k>', function() harpoon:list():next() end, { desc = "Next harpoon buffer" })

vim.keymap.set('n', '<C-1>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<C-2>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<C-3>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<C-4>', function() harpoon:list():select(4) end)

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

vim.keymap.set("n", "<C-l>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
vim.keymap.set("n", "<leader>l", function ()
                                     harpoon.ui:toggle_quick_menu(harpoon:list())
                                 end)

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
