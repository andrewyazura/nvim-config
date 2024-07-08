require('pckr').add({
  {'nvim-treesitter/nvim-treesitter'},
  {'tpope/vim-sensible'},
  {'tpope/vim-commentary'},
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
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function ()
      require('todo-comments').setup()
    end
  },
  {'neovim/nvim-lspconfig'},
  {
    'ms-jpq/coq_nvim',
    branch = 'coq',
  },
  {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts',
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
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {}
    end
  }
})
