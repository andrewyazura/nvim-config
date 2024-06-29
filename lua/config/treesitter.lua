require('nvim-treesitter.configs').setup({
  ensure_installed = { 'python', 'rust', 'lua' },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<leader>v',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
})
