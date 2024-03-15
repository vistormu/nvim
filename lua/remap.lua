-- Move up and down selection
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")

-- Indent and unindent selection
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- Move half page up and down
vim.keymap.set("n", "<C-Down>", "<C-d>zz")
vim.keymap.set("n", "<C-Up>", "<C-u>zz")

-- Paste without copying to clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Change all concurrences of word
vim.keymap.set("n", "<leader>cac", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gIc<Left><Left><Left>")

-- Copy to system's clipboard
vim.keymap.set("v", "<leader>y", "\"+y")

-- Go up and down trough long soft-wrapped lines
vim.keymap.set("n", "<Down>", "gj")
vim.keymap.set("n", "<Up>", "gk")
vim.keymap.set("v", "<Down>", "gj")
vim.keymap.set("v", "<Up>", "gk")

-- Exit to netrw
vim.keymap.set("n", "-", ":Ex<CR>")
