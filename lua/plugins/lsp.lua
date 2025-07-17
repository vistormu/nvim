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

    -- copilot
    {
        "github/copilot.vim",
    },

    -- python formatting
    {
        "stevearc/conform.nvim",
        opts = {
            formatters = {
                autopep8 = {
                    prepend_args = { "--max-line-length", "200", "--ignore", "E261" },
                },
            },
            formatters_by_ft = {
                python = { "autopep8" },
            },
            format_on_save = {
                timeout_ms = 1000,
                lsp_fallback = true,
            },
        },
    },
}
