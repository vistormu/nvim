local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'pyright',
	'marksman',
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-up>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-down>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
        ['<C-left>'] = cmp.mapping.complete(),
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
