local opt = vim.opt

vim.api.nvim_command("let g:loaded_python_provider = 0")
vim.api.nvim_command("let g:loaded_ruby_provider = 0")
vim.api.nvim_command("let g:loaded_perl_provider = 0")

opt.syntax = "on"
opt.encoding = "utf-8"
opt.backup = false
opt.swapfile = false
opt.writebackup = false
opt.compatible = false
opt.number = true
opt.relativenumber = true
opt.modelines = 0
opt.filetype = "on"
opt.belloff = "all"
opt.wrap = false
opt.ruler = true
opt.scrolloff = 20
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.shiftround = false
opt.hidden = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
vim.api.nvim_command("set t_Co=256")
opt.background = "dark"
opt.cmdheight = 1
opt.guicursor = ""
opt.autoindent = true
opt.termguicolors = true
opt.splitright = true
vim.api.nvim_command("colorscheme gruvbox-material")
