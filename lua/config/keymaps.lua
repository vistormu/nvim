local map = vim.keymap.set

-- move up and down selection
map("v", "<S-Down>", ":m '>+1<CR>gv=gv")
map("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- indent and unindent selection
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- move half page up and down
map("n", "<C-Down>", "<C-d>zz")
map("n", "<C-Up>", "<C-u>zz")
map("v", "<C-Down>", "<C-d>zz")
map("v", "<C-Up>", "<C-u>zz")

-- paste without copying to clipboard
map("x", "<leader>p", '"_dP')

-- change all concurrences of word
map("n", "<leader>cac", ":%s/<C-r><C-w>/<C-r><C-w>/gIc<Left><Left><Left><Left>")

-- copy to system's clipboard
map("v", "<leader>y", '"+y')

-- go up and down trough long soft-wrapped lines
map("n", "<Down>", "gj")
map("n", "<Up>", "gk")
map("v", "<Down>", "gj")
map("v", "<Up>", "gk")

-- exit to netrw
map("n", "<leader>-", ":Ex<CR>")

-- exit to snacks
vim.keymap.set(
    "n",
    "-",
    (function()
        local prev_buf, prev_win
        return function()
            local ex = Snacks.picker.get({ source = "explorer" })
            if #ex == 0 then
                prev_buf, prev_win = vim.api.nvim_get_current_buf(), vim.api.nvim_get_current_win()
                Snacks.picker.explorer()
            elseif ex[1]:is_focused() then
                ex[1]:close()
                if vim.api.nvim_buf_is_valid(prev_buf) and vim.api.nvim_win_is_valid(prev_win) then
                    vim.api.nvim_set_current_win(prev_win)
                    vim.api.nvim_win_set_buf(prev_win, prev_buf)
                end
            else
                prev_buf, prev_win = vim.api.nvim_get_current_buf(), vim.api.nvim_get_current_win()
                ex[1]:focus()
            end
        end
    end)(),
    { desc = "Smart Explorer Toggle + Restore" }
)

-- escape characters for proxima
map("x", "<leader>b", [[:s/\([{}@#\\]\)/\\\1/g<CR>]], { noremap = true, silent = true })

-- sourrounding text with <p> tags
map("n", "<leader>pp", "<S-o><p><Esc><Down>o</p><Esc>", { noremap = true, silent = true })

-- toggle diagnostics
map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true })

-- find string
map("n", "<leader>fs", function()
    require("telescope.builtin").live_grep()
end, { desc = "Grep (Find in files)" })

-- harpoon
map("n", "<C-h>", function()
    local harpoon = require("harpoon")
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, {})

map("n", "<leader>add", function()
    require("harpoon"):list():add()
end, {})

-- lsps nav
map("n", "<leader>si", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
-- map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
-- map("n", "<leader>gd", "<C-W>v<C-W>w<cmd>gd", { noremap = true, silent = true })
