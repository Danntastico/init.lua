-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                        r    , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	  }
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  use 'theprimeagen/harpoon'
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
end)
