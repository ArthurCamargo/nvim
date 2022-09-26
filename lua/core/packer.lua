-- This file can be loaded by calling `lua require('plugins')` from your init.vim

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
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorschemes :)
    use 'folke/tokyonight.nvim'

    -- TJ created lodash of neovim
    use("nvim-lua/popup.nvim")   -- Userful function for nvim in lua
    use("nvim-lua/plenary.nvim") -- Useful functions for nvim in lua

    -- Colorschemes
    use("lunarvim/colorschemes")
    use("NLKNguyen/papercolor-theme")

    -- Completion
    use ("hrsh7th/nvim-cmp") -- The completion plugin
    use ("hrsh7th/cmp-buffer") -- buffer completions
    use ("hrsh7th/cmp-path") -- path completions
    use ("hrsh7th/cmp-cmdline") -- cmdline completions
    use ("hrsh7th/cmp-nvim-lsp") -- cmdline completions
    use ("hrsh7th/cmp-nvim-lua")-- cmdline completions
    use ("saadparwaiz1/cmp_luasnip") -- snippet completions

    -- Snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- Lsp
    use ("neovim/nvim-lspconfig") -- Lsp config main
    use ("williamboman/nvim-lsp-installer") -- Lsp installer

    -- Telescope
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-media-files.nvim")

    -- TreeSitter
    use{'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
    }

    -- Autopairs
    use("windwp/nvim-autopairs")

    -- Git signs 
    use ("lewis6991/gitsigns.nvim") 

    -- Comments
    use ("numToStr/Comment.nvim")
    use ("JoosepAlviste/nvim-ts-context-commentstring")

    -- Nvim-tree
    use ("kyazdani42/nvim-tree.lua")
    use("kyazdani42/nvim-web-devicons")

    -- Zettelkasten
    use("mickael-menu/zk-nvim")

    use('tpope/vim-surround')
    use('ryanoasis/vim-devicons')

    use("romgrk/barbar.nvim")
    use("feline-nvim/feline.nvim")

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
end)
