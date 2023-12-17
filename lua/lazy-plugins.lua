require('lazy').setup({

    -- Plenary is a dependency for telescope.
    'nvim-lua/plenary.nvim',

    -- Telescope is a fuzzy finder.
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Catppuccin is a beautiful theme.
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Treesitter is a syntax highlighter.
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- Harpoon is a cool bookmarking plugin.
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Gives LSPs to Vim
    {
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            lazy = true,
            config = false,
            init = function()
                -- Disable automatic setup, we are doing it manually
                vim.g.lsp_zero_extend_cmp = 0
                vim.g.lsp_zero_extend_lspconfig = 0
            end,
        },
        {
            'williamboman/mason.nvim',
            lazy = false,
            config = true,
        },

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            event = 'InsertEnter',
            dependencies = {
                {'L3MON4D3/LuaSnip'},
            },
            config = function()
                -- Here is where you configure the autocompletion settings.
                local lsp_zero = require('lsp-zero')
                lsp_zero.extend_cmp()

                -- And you can configure cmp even more, if you want to.
                local cmp = require('cmp')
                local cmp_action = lsp_zero.cmp_action()

                cmp.setup({
                    formatting = lsp_zero.cmp_format(),
                    mapping = cmp.mapping.preset.insert({
                        ['<C-Space>'] = cmp.mapping.complete(),
                        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                        ['<C-d>'] = cmp.mapping.scroll_docs(4),
                        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
                    })
                })
            end
        },

        -- LSP
        {
            'neovim/nvim-lspconfig',
            cmd = {'LspInfo', 'LspInstall', 'LspStart'},
            event = {'BufReadPre', 'BufNewFile'},
            dependencies = {
                {'hrsh7th/cmp-nvim-lsp'},
                {'williamboman/mason-lspconfig.nvim'},
            },
            config = function()
                -- This is where all the LSP shenanigans will live
                local lsp_zero = require('lsp-zero')
                lsp_zero.extend_lspconfig()

                lsp_zero.on_attach(function(client, bufnr)
                    -- see :help lsp-zero-keybindings
                    -- to learn the available actions
                    lsp_zero.default_keymaps({buffer = bufnr})
                end)

                require('mason-lspconfig').setup({
                    ensure_installed = {},
                    handlers = {
                        lsp_zero.default_setup,
                        lua_ls = function()
                            -- (Optional) Configure lua language server for neovim
                            local lua_opts = lsp_zero.nvim_lua_ls()
                            require('lspconfig').lua_ls.setup(lua_opts)
                        end,
                    }
                })
            end
        }
    },

    -- Vim commentary is a comment toggler.
    "tpope/vim-commentary",

    -- Auto pairs is a bracket pairer.
    "windwp/nvim-autopairs",
    
    -- Lualine is a cool highly customizable statusline.
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },

    -- Toggleterm is a built in terminal.
    {
    "akinsho/toggleterm.nvim",
        config = function()
          require("toggleterm").setup()
        end
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("trouble").setup({})
        end
    },

    -- Github Copilot
    "github/copilot.vim",

    
    -- Null-ls is a cool way to add formatting.
    "jose-elias-alvarez/null-ls.nvim",

    -- Web devicons is a cool icon pack.
    'nvim-tree/nvim-web-devicons',
}, {})
