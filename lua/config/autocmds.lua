local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- proxima
local my_group = augroup("custom_proxima_ft", { clear = true })

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
