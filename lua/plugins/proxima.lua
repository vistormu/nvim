return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "proxima" },
            highlight = { enable = true, additional_vim_regex_highlighting = true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)

            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.proxima = {
                install_info = {
                    url = "~/Documents/projects/tree-sitter-proxima",
                    files = { "src/parser.c" },
                },
                filetype = "proxima",
            }
        end,
    },
}
