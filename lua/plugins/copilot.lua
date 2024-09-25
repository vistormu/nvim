vim.g.copilot_no_tab_map = true

vim.keymap.set("i", "<C-right>", 'copilot#Accept("<CR>")', {expr = true, remap = false, silent = true, noremap = true, replace_keycodes = false})
