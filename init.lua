vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('remap')
require('set')
require('lazy-bootstrap')
require('lazy-plugins')

local function load_plugins()
    local fn = vim.fn
    local plugin_dir = fn.stdpath('config') .. '/lua/plugins'

    for _, file in ipairs(fn.readdir(plugin_dir)) do
        if file:match('.lua$') then
            local plugin_name = file:sub(1, -5) -- Removes the .lua extension
            require('plugins.' .. plugin_name)
        end
    end
end

load_plugins()

vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    local last_pos = vim.fn.line([['"]])
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
      vim.api.nvim_win_set_cursor(0, {last_pos, 0})
    end
  end
})
