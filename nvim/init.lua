if (not vim.g.vscode)
then
	require("plugins")
	require("settings")
	require("lsp_conf")
	require("treesitter_conf")
	require("lualine_conf")
	require("nvimtree_conf")
    require("bufferline_conf")
end
