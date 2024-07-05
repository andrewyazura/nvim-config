return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function ()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "rust_analyzer", "ruff" }
      })

      local lspconfig = require("lspconfig")

      lspconfig.rust_analyzer.setup({})
      lspconfig.ruff.setup({})
    end
}
