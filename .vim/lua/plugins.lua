local use = require('packer').use
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
