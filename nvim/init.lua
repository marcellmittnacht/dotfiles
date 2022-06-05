if (not vim.g.vscode)
then
	require('plugins')
	require('settings')
	require('keybinds')
  require('basic_plugins')
  require('lsp')
end
