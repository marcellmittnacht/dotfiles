return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
        {
            'ms-jpq/coq-nvim',
            branch = 'coq'
        },
        {
           'ms-jpq/coq.artifacts',
           branch = 'artifacts'
        }
    }
    use 'folke/tokyonight.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'mhinz/vim-startify'
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'numToStr/Comment.nvim'

end)
