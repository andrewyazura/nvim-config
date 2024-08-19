require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"ruff",
		"pyright",
		"rust_analyzer",
		"lua_ls",
		"gopls",
	},
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.ruff.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })

lspconfig.rust_analyzer.setup({ capabilities = capabilities })

lspconfig.lua_ls.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					"vim",
				},
			},
		},
	},
})

lspconfig.gopls.setup({ capabilities = capabilities })

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.stylua,
	},
})

vim.keymap.set("n", "<leader><S-f>", vim.lsp.buf.format, { desc = "format" })
