return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Troubl",
  keys = {
    {
      "<leader>td",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "[t]rouble [d]iagnostics",
    },
    {
      "<leader>tbd",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "[t]rouble [b]uffer [d]iagnostics",
    },
    {
      "<leader>ts",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "[t]rouble [s]ymbols",
    },
    {
      "<leader>tl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "[t]rouble [l]sp",
    },
  },
}
