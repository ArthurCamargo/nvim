-- Autocommand to sync packer
vim.cmd [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]]

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.api.nvim_command, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- ctags
    use("preservim/tagbar")

    -- Emmet
    use("mattn/emmet-vim")

    -- ultisnips
    use("quangnguyen30192/cmp-nvim-ultisnips")

    -- Lua
    use ("folke/which-key.nvim")

    use ('ThePrimeagen/harpoon')

    -- TJ created lodash of neovim
    use("nvim-lua/popup.nvim")   -- Userful function for nvim in lua
    use("nvim-lua/plenary.nvim") -- Useful functions for nvim in lua

    -- Colorschemes
    use ("rafi/awesome-vim-colorschemes") 
    use("rebelot/kanagawa.nvim")
    use("NLKNguyen/papercolor-theme")
    use("sainnhe/everforest")
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Completion
    use ("hrsh7th/nvim-cmp") -- The completion plugin
    use ("hrsh7th/cmp-buffer") -- buffer completions
    use ("hrsh7th/cmp-path") -- path completions
    use ("hrsh7th/cmp-cmdline") -- cmdline completions
    use ("hrsh7th/cmp-nvim-lsp") -- cmdline completions
    use ("hrsh7th/cmp-nvim-lua")-- cmdline completions
    use ("SirVer/ultisnips")
    use ("hrsh7th/cmp-calc") -- Calculator
    use ("f3fora/cmp-spell") -- Spell

    -- Cheat
    use ('RishabhRD/popfix')
    use ('RishabhRD/nvim-cheat.sh')


    -- Lsp

    use { "folke/lsp-trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
        require("trouble").setup {
        } end
    }

    -- Telescope
    use("nvim-telescope/telescope.nvim")
    use("smilovanovic/telescope-search-dir-picker.nvim")
    use("nvim-telescope/telescope-media-files.nvim")
    use('nvim-telescope/telescope-dap.nvim')

    -- TreeSitter
    run = ":TSUpdate",
}
use{'p00f/nvim-ts-rainbow'}

-- Autopairs
use("windwp/nvim-autopairs")

-- Git Stuff
use ("tpope/vim-fugitive")
use ("lewis6991/gitsigns.nvim") 

-- Comments
use ("numToStr/Comment.nvim")
use ("JoosepAlviste/nvim-ts-context-commentstring")

-- Nvim-tree
use ("kyazdani42/nvim-tree.lua")

-- Latex
use ("lervag/vimtex")

use('tpope/vim-surround')

use('ryanoasis/vim-devicons')

use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
})
use ('romgrk/barbar.nvim')

end)
