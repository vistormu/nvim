return {
  -- show hidden files
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
      explorer = {
        files = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },

  -- disable tabs
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
