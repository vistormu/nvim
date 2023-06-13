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
vim.api.nvim_set_keymap('n', '-', ':Ex<CR>:LspRestart<CR>', { noremap = true, silent = true })

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup()
require("mason").setup()
