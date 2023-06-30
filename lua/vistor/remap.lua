vim.g.mapleader = " "

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

-- Select word
vim.keymap.set("n", "<leader>sw", "viw")

-- Change all concurrences of word
vim.keymap.set("n", "<leader>cac", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- New line
vim.keymap.set("n", "<leader>nl", "o<Esc>")

-- Copy to system's clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


