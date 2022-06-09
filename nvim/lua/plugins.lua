return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim'
	use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = {
	      'kyazdani42/nvim-web-devicons', -- optional, for file icon
	    }
	}
	use {
	    'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'numToStr/Comment.nvim'
	use {'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons'}
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp' 
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
end)
