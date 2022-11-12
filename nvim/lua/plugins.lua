local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'


    -- UI
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'rafi/awesome-vim-colorschemes'


    -- LSP
    use { 'williamboman/mason.nvim',
        requires = { 'mfussenegger/nvim-dap', 'mfussenegger/nvim-lint', 'mhartington/formatter.nvim' } }
    use 'williamboman/mason-lspconfig.nvim'

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-path'
    use 'hrsh7t/cmp-buffer'
    use 'hrsh7t/cmp-cmdline'
    use 'glepnir/lspsaga.nvim' -- Lightweight LSP UI
    use 'onsails/lspkind.nvim' -- vscode-like pictograms
    use 'j-hui/fidget.nvim' -- Standalone UI for nvim-lsp progress

    -- Snippets
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin


    -- Language based highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- Treesitter highlight colorizer
    use 'p00f/nvim-ts-rainbow'
    use 'universal-ctags/ctags'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Telescope stuff
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-project.nvim'
    -- Telescope media files preview
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Other
    use 'windwp/nvim-autopairs'

    use 'preservim/nerdtree'
    -- Commenting util
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Debugger
    use {
        'rcarriga/nvim-dap-ui',
        requires = {
            'mfussenegger/nvim-dap'
        }
    }

end)