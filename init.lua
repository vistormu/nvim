local function load_plugins()
    local fn = vim.fn
    local plugin_dir = fn.stdpath('config') .. '/plugins'

    for _, file in ipairs(fn.readdir(plugin_dir)) do
        if file:match('.lua$') then
            local plugin_name = file:sub(1, -5) -- Removes the .lua extension
            require('plugins.' .. plugin_name)
        end
    end
end

load_plugins()
require('packer')
require('remap')
require('set')
