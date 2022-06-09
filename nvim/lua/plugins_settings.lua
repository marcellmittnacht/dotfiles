require('Comment').setup{}
require('bufferline').setup{}
require'lualine'.setup {
	options = {
		theme = 'nord'
    	}
}
require'nvim-tree'.setup {
	view = {
		number = true,
		signcolumn = "yes",
	},
	actions = {
		open_file = {
		  	resize_window = true,
		},
	},
}
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}
