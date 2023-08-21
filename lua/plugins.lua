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
end)
