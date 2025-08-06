return {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find_files' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find_files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live_grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help_tags' })
        vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations , { desc = 'Telescope lsp_implementation'})
        vim.keymap.set('n', '<leader>ft', "<cmd> Telescope thesaurus lookup", { desc = 'Telescope help tags' })
    end
    },
    {
       "nvim-telescope/telescope-ui-select.nvim",
        config = function ()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            })
        require("telescope").load_extension("ui-select")
        end
    },
    {
        "rafi/telescope-thesaurus.nvim",
        config = function ()
            require("telescope").setup({
                extensions = {
                    thesaurus = {
                        provider='datamuse'
                    }
                }
            })
        require("telescope").load_extension("thesaurus")
        end
    }
}
