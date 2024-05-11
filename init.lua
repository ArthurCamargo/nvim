local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.remap")
require("core.options")
require("core.abbreviations")
require("core.packer")
require("core.cmp")
require("core.lsp")
require("core.telescope")
require("core.treesitter")
require("core.autopairs")
require("core.comment")
require("core.gitsigns")
require("core.lualine")
require("core.nvim-tree")
require("core.which-key")
require("core.trouble")
require("core.vimtex")
require("core.autocommands")
require("core.mason")
require("core.tree")
