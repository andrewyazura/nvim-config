-- Leader
vim.g.mapleader = " "

-- Harpoon
local harpoon = require('harpoon')

harpoon:setup({})
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = "Add buffer to harpoon" })

vim.keymap.set('n', '<leader>j', function() harpoon:list():prev() end, { desc = "Previous harpoon buffer" })
vim.keymap.set('n', '<leader>k', function() harpoon:list():next() end, { desc = "Next harpoon buffer" })

vim.keymap.set('n', '<leader>1', function() harpoon:list():select(1) end, { desc = "Switch to first harpoon entry" })
vim.keymap.set('n', '<leader>2', function() harpoon:list():select(2) end, { desc = "Switch to second harpoon entry" })
vim.keymap.set('n', '<leader>3', function() harpoon:list():select(3) end, { desc = "Switch to third harpoon entry" })
vim.keymap.set('n', '<leader>4', function() harpoon:list():select(4) end, { desc = "Switch to fourth harpoon entry" })

vim.keymap.set("n", "<leader>hl", function () harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon menu" })

-- Telescope
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

vim.keymap.set("n", "<leader>fh", function() toggle_telescope(harpoon:list()) end, { desc = "Search over harpoon entries" })

local pickers = require('telescope.builtin')

vim.keymap.set('n', '<leader>fgb', pickers.git_branches, { desc = 'Search over git branches'})
vim.keymap.set('n', '<leader>fgs', pickers.git_stash, { desc = 'Search over git stash'})

-- UndoTree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree menu' })
