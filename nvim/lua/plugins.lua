return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'wittyjudge/gruvbox-material.nvim'
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
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'nvim-treesitter/nvim-treesitter'
  use {
    "williamboman/nvim-lsp-installer",
    {
      "neovim/nvim-lspconfig",
      {
        'ms-jpq/coq-nvim',
        branch = 'coq'
      },
      {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
      },
    }
  }
end)
