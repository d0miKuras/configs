local keymap = vim.keymap

keymap.set('n', '<C-e>', ':NERDTree<CR>')

keymap.set('n', '<C-t>', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<C-f>', '<cmd>Telescope live_grep<CR>')
keymap.set('n', 'cf', '<cmd> lua vim.lsp.buf.format()<cr>')

keymap.set('', '<C-.>', '<cmd>Lspsaga code_action<CR>')
keymap.set('', '<C-;>', '<cmd>Lspsaga show_line_diagnostics<CR>')

