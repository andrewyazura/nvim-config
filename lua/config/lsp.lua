local lsp = require('lspconfig')
local coq = require('coq')

lsp.ruff.setup(coq.lsp_ensure_capabilities({}))
lsp.pyright.setup(
    coq.lsp_ensure_capabilities(
    {
        settings = {
            pyright = {
            -- Using Ruff's import organizer
                disableOrganizeImports = true,
            },
            python = {
                analysis = {
                -- Ignore all files for analysis to exclusively use Ruff for linting
                    ignore = { '*' },
                },
            },
        },
    }
    )
)
lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities({}))
