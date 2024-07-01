require('pckr').add({
    {'neovim/nvim-lspconfig'},
    {'nvim-treesitter/nvim-treesitter'},
    {'ycm-core/YouCompleteMe'},
    {"catppuccin/nvim", as = "catppuccin"},
    {'mbbill/undotree'},
    {'tpope/vim-sensible'},
    {'tpope/vim-commentary'},
    {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function ()
            require('todo-comments').setup()
        end
    },
    {'wakatime/vim-wakatime'},
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = 'nvim-lua/plenary.nvim',
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = 'nvim-lua/plenary.nvim',
    },
    {
        'windwp/nvim-autopairs',
        config = function ()
            require('nvim-autopairs').setup()
        end
    },
    {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup({})
        end
    },
    {
        'nvimdev/indentmini.nvim',
        config = function ()
            require('indentmini').setup()
        end
    },
})
