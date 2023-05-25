-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Fuzzy finder goodness
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- theme
  use { 
	  'rose-pine/neovim', 
	  as = 'rose-pine'
  }

  -- highlighting 
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- neat - ast of the current document
  use { 'nvim-treesitter/playground'}
  -- quick navigation of open buffers
  use { 'theprimeagen/harpoon' }
  -- advanced undo feature that visualizes changes
  use { 'mbbill/undotree' }
  -- git integration
  use { 'tpope/vim-fugitive' }
  -- COC
  use {'neoclide/coc.nvim', branch = 'release'}
  
end)
