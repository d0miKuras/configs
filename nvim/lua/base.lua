vim.cmd("autocmd!")

-- vim.scriptencoding = 'utf-8'
-- vim.opt.encoding = 'utf-8'
-- vim.opt.fileencoding = 'utf-8'
-- vim.cmd 'let $LANG="en"'

vim.wo.number = true

vim.cmd [[ set mouse-=a ]]
vim.cmd [[ set noswapfile ]]

vim.opt.title = true
vim.opt.syntax = on
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 999
vim.opt.relativenumber = true

vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true -- No Wrap lines
