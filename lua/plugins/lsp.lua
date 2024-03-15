local lsp = require("lsp-zero")

lsp.preset("recommended")

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true}),
    }
})

vim.api.nvim_set_keymap('n', '<Leader>si', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

lsp.set_preferences({
    sign_icons = {}
})

-- local lspconfig = require('lspconfig')
-- local clandg_path = "/usr/bin/clangd"

-- lspconfig.clangd.setup({
--     cmd = { clandg_path, "--background-index" },
--     filetypes = { "c", "cpp", "objc", "objcpp" },
--     root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
--     init_options = {
--         clangdFileStatus = true
--     }
-- })

lsp.setup()
require("mason").setup()
