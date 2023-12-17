vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer package manager
    use 'wbthomason/packer.nvim'

    -- Telescope is a fuzzy finder.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'}
    }
    }

    -- Catppuccin is a beautiful theme.
    use {"catppuccin/nvim", as = "catppuccin"}

    -- Treesitter is a syntax highlighter.
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Harpoon is a cool bookmarking plugin.
    use "nvim-lua/plenary.nvim"
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- LSP is a language server protocol.
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Vim commentary is a comment toggler.
    use('tpope/vim-commentary')

    -- Auto pairs is a bracket pairer.
    use {'windwp/nvim-autopairs'}

    -- Lualine is a cool highly customizable statusline.
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Toggleterm is a built in terminal.
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- Trouble is a cool error list.
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            }
        end
    }
    
    -- Github Copilot.
    use "github/copilot.vim"
    
    -- Null-ls is a cool way to add formatting.
    use "jose-elias-alvarez/null-ls.nvim"

    -- Web devicons is a cool icon pack.
    use 'nvim-tree/nvim-web-devicons'

end)
