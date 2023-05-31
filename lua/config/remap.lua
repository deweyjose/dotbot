vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<Leader>w', '<C-w>w', {noremap = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

