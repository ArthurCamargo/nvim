return {
    {
      "f-person/auto-dark-mode.nvim",
      opts = {
      }
    },
    {
        "kepano/flexoki-neovim",
        lazy = false,
        priority = 1000,
        background = 'dark',
        opts = {},
        config = function()
            vim.cmd([[colorscheme retrobox]])
        end,
    }
}
