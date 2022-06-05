if (not vim.g.vscode)
then
	require('plugins')
	require('settings')
	require('keybinds')
  require('plugins_settings')
  require('lsp')
end
