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
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    use 'williamboman/nvim-lsp-installer'
    use 'shaunsingh/nord.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }
    use {
        'nvim-telescope/telescope.nvim',
        branch = 'nvim-0.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'mhinz/vim-startify'
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

end)
