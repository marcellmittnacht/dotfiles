local map = vim.api.nvim_set_keymap

-- disable arrow keys
map("n", "<up>", "<nop>", {noremap = true})
map("n", "<down>", "<nop>", {noremap = true})
map("i", "<up>", "<nop>", {noremap = true})
map("i", "<down>", "<nop>", {noremap = true})
map("i", "<left>", "<nop>", {noremap = true})
map("i", "<right>", "<nop>", {noremap = true})
map("n", "<left>", "<nop>", {noremap = true})
map("n", "<right>", "<nop>", {noremap = true})

-- Nvim tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true})

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", {noremap = true})

-- Buffline
map("n", "<A-]>", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
map("n", "<C-]>", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})
map("n", "q:", "<nop>", {noremap = true})
