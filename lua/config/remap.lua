vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>w', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', 'tt', ':terminal<CR>', {noremap = true})

