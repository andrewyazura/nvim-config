local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.stylua,
  },
})

vim.keymap.set("n", "<leader><S-f>", vim.lsp.buf.format, { desc = "format" })
