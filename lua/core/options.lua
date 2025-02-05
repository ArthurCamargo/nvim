-- Use '*' as clipboard register
vim.opt.clipboard = ''

-- More space to the cmd
vim.opt.cmdheight = 2

-- Set current dir as root (autoch)
vim.opt.autochdir = true

-- Terminal gui colors
vim.opt.termguicolors = true

-- Complete menu and select
vim.opt.completeopt = {'menuone', 'noselect', 'menu'}

-- Always show tabs
vim.opt.showtabline = 2

-- Splits, below and at the right
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Mouse support at all modes
vim.opt.mouse = 'a'


--Wrapping
vim.opt.lbr = true
vim.opt.formatoptions="lt"
vim.opt.breakindent = true

-- Trailing characters
vim.opt.list = true

-- Transparency

-- Tabstops options
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4

-- Faster update time, 300ms (4000ms is the default)
vim.opt.updatetime = 300

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Smart indent for the win, knows the identation whem pressing enter
vim.opt.smartindent=true

-- Sign column, so git changes does not overlap the line numbers
vim.opt.signcolumn = "yes"

-- Scroll off, so you don't end up needing to go to the very end
vim.opt.scrolloff = 10

-- Please do wrap
vim.opt.wrap=true
vim.opt.textwidth=80


-- Smartcase
vim.opt.smartcase = true

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Include somecharacters to be part of a word 'a-b' is now a whole word
vim.opt.isk:append "-"

-- Create a colorcolumn to indicate that you are going to far
vim.opt.colorcolumn = '80'


