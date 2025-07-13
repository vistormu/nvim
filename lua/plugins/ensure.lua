return {
    {
        "mason-org/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "shfmt",
                "pyright",
                "autopep8",
                "gopls",
                "golines",
                "bash-language-server",
                "beautysh",
                "marksman",
                "checkmake",
                "tombi",
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "python",
                "go",
                "toml",
                "bash",
                "markdown",
                "make",
            },
        },
    },
}
