local lsp_installer = require "nvim-lsp-installer"

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  local opts = { noremap=true, silent=true }

  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>d', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

vim.g.coq_settings = { auto_start = 'shut-up' }

function common_on_attach(client, bufnr)
  -- add your code here
end

lsp_installer.on_server_ready(function(server)
  -- Specify the default options which we'll use to setup all servers
  local opts = {
    on_attach = on_attach,
    flags = {
        debounce_text_changes = 150,
    },
  }
  if server.name == "eslint" then
    opts.on_attach = function (client, bufnr)
        -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
        -- the resolved capabilities of the eslint server ourselves!
        client.resolved_capabilities.document_formatting = true
        common_on_attach(client, bufnr)
    end
    opts.settings = {
        format = { enable = true }, -- this will enable formatting
    }
end

  server:setup(opts)
end)

