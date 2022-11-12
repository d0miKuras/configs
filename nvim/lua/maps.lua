local keymap = vim.keymap

keymap.set('n', 'nt', ':NERDTree<CR>')

keymap.set('n', 'ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', 'fg', '<cmd>Telescope live_grep<CR>')
keymap.set('n', 'cf', '<cmd> lua vim.lsp.buf.format()<cr>')

keymap.set('', '<C-.>', '<cmd>Lspsaga code_action<CR>')
keymap.set('', '<C-;>', '<cmd>Lspsaga show_line_diagnostics<CR>')

keymap.set('n', 'gt', '<cmd>:tabnext<cr>')

keymap.set('n', 'gT', '<cmd>:tabprevious<cr>')

keymap.set('n', '<c-t>', '<cmd>:ToggleTerm height=20 direction=horizontal<cr>')
keymap.set('i', '<c-a>', '<cmd>lua vim.lsp.bug.code_action()<cr>')

-- -- Mappings.
-- -- See `:help vim.lsp.*` for documentation on any of the below functions
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl',
--     '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-a>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
