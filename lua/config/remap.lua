vim.g.mapleader = " "
---------------------------------------------------------------------------
-- window scrolling
-- left
vim.api.nvim_set_keymap('n', '<Leader>wh', '<C-w>h', {noremap = true})
-- right
vim.api.nvim_set_keymap('n', '<Leader>wl', '<C-w>l', {noremap = true})
-- down
vim.api.nvim_set_keymap('n', '<Leader>wj', '<C-w>j', {noremap = true})
-- up
vim.api.nvim_set_keymap('n', '<Leader>wk', '<C-w>k', {noremap = true})
---------------------------------------------------------------------------

-- save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', 'tt', ':terminal<CR>', {noremap = true})

