require('nvim-treesitter.configs').setup({
  ensure_installed = {'lua', 'python', 'rust'},
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      scope_incremental = 'grc',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
})
