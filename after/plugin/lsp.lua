local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'pyright',
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
    }
})

vim.api.nvim_set_keymap('n', '<Leader>si', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

-- lsp.defaults.cmp_mappings({
--   ['<Tab>'] = vim.NIL,
--   ['<S-Tab>'] = vim.NIL,
--   ['<CR>'] = vim.NIL,
-- })

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup()
