require('catppuccin').setup({
    flavour = 'mocha',
    background = {
        light = 'latte',
        dark = 'mocha',
    },
    transparent_background = false,
    default_integrations = true,
    integrations = {
        treesitter = true,
        harpoon = true,
        telescope = {
            enabled = true,
        },
        which_key = true,
    },
})

vim.cmd.colorscheme('catppuccin') 
