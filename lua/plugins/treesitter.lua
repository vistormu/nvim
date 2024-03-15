require('nvim-treesitter.configs').setup {
  ensure_installed = {},
  highlight = {
      enable = true,
  },
  additional_vim_regex_highlighting = true,
}

-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- vim.api.nvim_command('autocmd BufRead,BufNewFile *.kimchi setfiletype rust')

-- parser_config.proxima = {
--   install_info = {
--     url = "~/projects/tree-sitter-proxima",
--     files = {"src/parser.c"},
--   },
-- }
-- vim.api.nvim_command('autocmd BufRead,BufNewFile *.prox setfiletype proxima')
-- vim.api.nvim_command('autocmd FileType proxima setlocal commentstring=#\\ %s')
-- vim.api.nvim_command('autocmd FileType proxima setlocal spell')
