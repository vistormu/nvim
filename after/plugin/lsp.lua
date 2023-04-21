local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'pyright',
	'marksman',
})

lsp.setup()
