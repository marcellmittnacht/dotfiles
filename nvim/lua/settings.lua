local opt = vim.opt
local map = vim.api.nvim_set_keymap

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
opt.filetype = "on"
opt.modelines = 0
opt.belloff = "all"
opt.wrap = false
opt.ruler = true
opt.scrolloff = 20
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.shiftround = false
opt.hidden = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true
vim.api.nvim_command("set t_Co=256")
opt.cmdheight = 1
opt.updatetime = 500
opt.guicursor = ""
opt.autoindent = true
opt.termguicolors = true
opt.splitright = true
vim.g.tokyonight_style = "storm"
vim.api.nvim_command("colorscheme tokyonight")
vim.api.nvim_command("set clipboard+=unnamedplus")
vim.api.nvim_command("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
vim.api.nvim_command("nnoremap <C-p> <cmd>Telescope find_files<cr>")
vim.api.nvim_command("nnoremap <silent><C-]> :BufferLineCycleNext<CR>")
vim.api.nvim_command("nnoremap <silent><A-]> :BufferLineCyclePrev<CR>")
vim.api.nvim_command("nnoremap q: <nop>")

map("n", "<up>", "<nop>", {noremap = true})
map("n", "<down>", "<nop>", {noremap = true})
map("i", "<up>", "<nop>", {noremap = true})
map("i", "<down>", "<nop>", {noremap = true})
map("i", "<left>", "<nop>", {noremap = true})
map("i", "<right>", "<nop>", {noremap = true})
map("n", "<left>", "<nop>", {noremap = true})
map("n", "<right>", "<nop>", {noremap = true})
vim.api.nvim_command("nnoremap <C-n> :NvimTreeToggle<CR>")
