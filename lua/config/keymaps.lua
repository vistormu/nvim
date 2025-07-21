local map = vim.keymap.set

-- i hate "Q is not an editor command" IT WAS A TYPO!
map("ca", "Q", "q", { noremap = true })
map("ca", "W", "w", { noremap = true })
map("ca", "WQ", "wq", { noremap = true })
map("ca", "Qall", "qall", { noremap = true })

-- move up and down selection
map("v", "<S-Down>", ":m '>+1<CR>gv=gv")
map("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- indent and unindent selection
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- move half page up and down
map("n", "<C-Down>", "<C-d>")
map("n", "<C-Up>", "<C-u>")
map("v", "<C-Down>", "<C-d>")
map("v", "<C-Up>", "<C-u>")

-- paste without copying to clipboard
map("x", "<leader>p", '"_dP')

-- change all concurrences of word
map("n", "<leader>cac", ":%s/<C-r><C-w>/<C-r><C-w>/gIc<Left><Left><Left><Left>")

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
map("x", "<leader>b", [[:s/\([{}@#\\]\)/\\\1/g<CR>]])

-- sourrounding text with <p> tags
map("n", "<leader>pp", "<S-o><p><Esc><Down>o</p><Esc>")

-- toggle diagnostics
map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>")

-- find string
map("n", "<leader>fs", require("telescope.builtin").live_grep)

-- harpoon
map("n", "<C-h>", function()
    local harpoon = require("harpoon")
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, {})

map("n", "<leader>add", function()
    require("harpoon"):list():add()
end)

-- lsp nav
map("n", "<leader>si", vim.lsp.buf.hover)
map("n", "gd", require("telescope.builtin").lsp_definitions)
map("n", "<leader>gd", "<C-w>vgd", { remap = true })

-- quick make command
map("n", "<leader>m", function()
    vim.cmd("make")
end)

-- replace spaces for tabs (makefile fix)
map("n", "<leader>mt", function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 2
    vim.cmd("%retab!")
end, { desc = "Makefile: fix leading spaces → tabs" })
