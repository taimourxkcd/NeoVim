vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' 
  use 'neovim/nvim-lspconfig'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
	use{
				'nvim-tree/nvim-tree.lua',
				requires = {
								'nvim-tree/nvim-web-devicons',
				},
				tag= 'nightly'
	}
	use 'sainnhe/everforest'
	use 'rmagatti/alternate-toggler'
	use 'windwp/nvim-autopairs'
	use 'mg979/vim-visual-multi'
	use 'gcmt/wildfire.vim'
	use 'tpope/vim-surround'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
