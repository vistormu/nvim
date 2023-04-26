vim.g.copilot_no_tab_map = true

local function SuggestOneCharacter()
  local suggestion = vim.fn['copilot#Accept']("")
  local bar = vim.fn['copilot#TextQueuedForInsertion']()
  return bar:sub(1, 1)
end

local map = vim.keymap.set
map('i', '<C-right>', SuggestOneCharacter, {expr = true, remap = false})
map("i", "<C-S-right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
