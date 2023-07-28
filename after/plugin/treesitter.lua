local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.kimchi = {
    install_info = {
        url = "~/projects/kimchilang/tree-sitter-kimchi",
        files = {"src/parser.c"},
    },
}

require('nvim-treesitter.configs').setup {
  ensure_installed = { "python",  "kimchi"},
  
  sync_install = true,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
