-- Set vim cursor in insert mode to a horizontal bar
vim.cmd("set guicursor=i:hor25")

-- Set line numbers
vim.opt.nu = true

-- Set relative line numbers
vim.opt.relativenumber = true

-- 4 spaces for tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Wrap lines
-- vim.opt.wrap = false

-- Highlight and increment search results
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- IDK what this does
vim.opt.termguicolors = true

-- Set vertical scrolloff to have a minimum of 8 lines
vim.opt.scrolloff = 8

-- IDK what this does
vim.opt.signcolumn = "yes"

-- Fast update time I guess
vim.opt.updatetime = 50

-- Disable the ugly column
vim.opt.colorcolumn = ""

-- Spell check
vim.opt.spell = true
vim.opt.spelllang = "en_us"
