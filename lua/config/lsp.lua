local lsp = require('lspconfig')
local coq = require('coq')

lsp.ruff.setup({})
lsp.ruff.setup(coq.lsp_ensure_capabilities({}))

lsp.rust_analyzer.setup({})
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities({}))
