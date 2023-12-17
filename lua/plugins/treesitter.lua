local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

require('nvim-treesitter.configs').setup {
  ensure_installed = {},
  highlight = {
      enable = true,
  },
}

-- vim.api.nvim_command('autocmd BufRead,BufNewFile *.prox setfiletype html')
vim.api.nvim_command('autocmd BufRead,BufNewFile *.prox setfiletype html')
vim.api.nvim_command('autocmd BufRead,BufNewFile *.kimchi setfiletype rust')
