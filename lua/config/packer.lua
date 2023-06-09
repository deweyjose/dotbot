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
  use { 'neoclide/coc.nvim', branch = 'release'}
  -- Prettier
  use {
      'prettier/vim-prettier',
      run = 'yarn install',
      ft = {'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html'}
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use 'nvim-tree/nvim-web-devicons'

  use {
      'nvim-tree/nvim-tree.lua',
          requires = {
              'nvim-tree/nvim-web-devicons', -- optional
          },
          config = function()
              require("nvim-tree").setup {}
      end
  }

  use 'vim-ruby/vim-ruby'

  use 'tpope/vim-unimpaired'

  use { 'psf/black', branch = 'stable'}

end)
