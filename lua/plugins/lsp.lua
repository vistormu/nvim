return {
    -- blink is giving me issues
    {
        "saghen/blink.cmp",
        enabled = false,
    },

    -- disable plain text completion
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            opts.sources = vim.tbl_filter(function(src)
                return not vim.tbl_contains({ "buffer", "nvim_lsp" }, src.name)
            end, opts.sources)

            -- Add back LSP with Text-filter
            table.insert(opts.sources, 1, {
                name = "nvim_lsp",
                entry_filter = function(entry, _)
                    return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Text"
                end,
            })
        end,
    },
}
