local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local my_group = augroup("custom", { clear = true })

-- disable some comment autocompletion formatting
autocmd("FileType", {
    group = my_group,
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "r", "o", "c" })
    end,
})

-- proxima
autocmd({ "BufRead", "BufNewFile" }, {
    group = my_group,
    pattern = "*.prox",
    command = "setfiletype proxima",
})

autocmd("FileType", {
    group = my_group,
    pattern = "proxima",
    callback = function()
        vim.bo.commentstring = "# %s"
        vim.opt_local.spell = true
    end,
})

-- gleam
autocmd("FileType", {
    group = my_group,
    pattern = "gleam",
    callback = function()
        vim.bo.commentstring = "// %s"
    end,
})
