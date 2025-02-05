return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup {
            size = 80,
            open_mapping = "<c-t>",
            hide_numbers = true,
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            insert_mappings = false,
            persist_size = true,
            direction = "vertical", -- direction = 'vertical' | 'horizontal' | 'tab' | 'float',
            close_on_exit = true,
            shell = 'zsh',   -- Change the default shell. Can be a string or a function returning a string
            float_opts = {
                border = "curved", -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
                winblend = 0,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
            terminal_mappings = true,
            persist_mode = false,
            auto_scroll = true,
        }
    end
}
