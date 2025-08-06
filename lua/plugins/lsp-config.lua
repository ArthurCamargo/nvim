return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ltex", "jedi_language_server", "clangd"},
            })
        end,
    },
    {
        vim.lsp.enable('clangd'),
        vim.lsp.enable('lua_ls'),
        vim.lsp.enable('ltex'),
        vim.lsp.enable('texlab'),
        vim.lsp.enable('jedi_language_server'),
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {}),
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}),
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}),
    }
}
