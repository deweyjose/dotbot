set nocompatible

"""""""""""""""""""""""""""""""""
" PLUGINS: START
"""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')


Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

call plug#end()

"""""""""""""""""""""""""""""""""
" PLUGINS: END
"""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""
" VIM SETTINGS
"""""""""""""""""""""""""""""""""

filetype plugin indent on

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set number
set relativenumber
set nowrap
set tabstop=2

"""""""""""""""""""""""""""""""""
" NeoVim Terminal
"""""""""""""""""""""""""""""""""

if has('nvim')
  " Escape to exit terminal mode
  :tnoremap <Esc> <C-\><C-n>
endif

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

