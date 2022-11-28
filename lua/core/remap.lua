local nnoremap = require("core.keymap").nnoremap
local vnoremap = require("core.keymap").vnoremap
local inoremap = require("core.keymap").inoremap
--[[ local nmap = require("core.keymap").nmap ]]

-- Map the leader key
vim.g.mapleader=(",")

-- Remap for Explore
nnoremap('<leader>`', "<Cmd>NvimTreeToggle<CR>")

-- Super save, save as sudo
nnoremap("<leader>W", ":w !sudo tee % > /dev/null")

-- Resize splits 
nnoremap("<C-Down>", "<Cmd>resize -2<CR>")
nnoremap("<C-Up>", "<Cmd>resize +2<CR>")
nnoremap("<C-Left>", "<Cmd>vertical resize +2<CR>")
nnoremap("<C-Right>", "<Cmd>vertical resize -2<CR>")

-- Remove the highlights
nnoremap("<Leader><space>", "<Cmd>nohls<CR>")


-- Hold the identation in the visual mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Don't overwrite the clipboard while pasting over visualmode
vnoremap("p",'"_dP')

-- Remaps for editing files
nnoremap("<Leader>n", ":e ")

-- Edit nvim lua configs
nnoremap("<Leader>evr", "<cmd>e ~/.config/nvim/lua/core/remap.lua<CR>")
nnoremap("<Leader>evp", "<cmd>e ~/.config/nvim/lua/core/packer.lua<CR>")
nnoremap("<Leader>evo", "<cmd>e ~/.config/nvim/lua/core/options.lua<CR>")
nnoremap("<Leader>evc", "<cmd>e ~/.config/nvim/lua/core/<CR>")
nnoremap("<Leader>ev", "<cmd>e ~/.config/nvim/init.lua<CR>")


-- Editing zettelkasten notes
nnoremap("<Leader>ez", "<cmd>e ~/.config/zk/config.toml<CR>")
nnoremap("<Leader>en", "<cmd>e ~/Coisas/Wiki/Wiki<CR>")
nnoremap("<Leader>ezt", "<cmd>e ~/.config/zk/templates/<CR>")

-- Edit tmux config
nnoremap("<Leader>et", "<cmd>e ~/.config/tmux/tmux.conf<CR>")

-- Edit zshrc config
nnoremap("<Leader>ezs", "<cmd>e ~/.zshrc <CR>")

-- Edit references
nnoremap("<Leader>er:", "<Cmd>e ~/Coisas/Wiki/References/<CR>")

-- Edit references cheatsheets
nnoremap("<Leader>erc", "<Cmd>e ~/Coisas/Wiki/References/learnxiny/<CR>")


-- Source file
nnoremap("<Leader>sv", "<Cmd>so ~/.config/nvim/init.lua<CR>")

-- Spelling
nnoremap("<leader>sp", "<Cmd>set spell spelllang=en_us,pt_br<CR>")
inoremap("<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
nnoremap("<leader>sn","<Cmd>set nospell<CR>")

-- Buffer related commands
nnoremap("<Leader>q", "<Cmd>BufferClose<CR>")
nnoremap("<Leader>h", "<Cmd>BufferPrevious<CR>")
nnoremap("<Leader>l", "<Cmd>BufferNext<CR>")


-- Save file
nnoremap("<Leader>w", "<Cmd>w!<CR>")


-- Splits
nnoremap("<Leader>v", "<Cmd>vs<CR>")

-- Moving from splits
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l>")
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")

-- No hls
nnoremap("<leader><space>", ":nohls<CR>")

-- Using Telescope functions
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Search for the notes matching a given query.
nnoremap("<leader>fz", "<Cmd>Telescope zk notes<CR>")
-- Search for tags
nnoremap("<leader>fzt", "<Cmd>Telescope zk tags<CR>")
-- Search for the notes matching the current visual selection.
vnoremap("<leader>fz", ":'<,'>ZkMatch<CR>")


-- Goto buffer in position...
nnoremap("<Leader>H", "<Cmd>BufferMovePrevious<CR>")
nnoremap("<Leader>L", "<Cmd>BufferMoveNext<CR>")
nnoremap("<A-1>", "<Cmd>BufferGoto 1<CR>")
nnoremap("<A-2>", "<Cmd>BufferGoto 2<CR>")
nnoremap("<A-3>", "<Cmd>BufferGoto 3<CR>")
nnoremap("<A-4>", "<Cmd>BufferGoto 4<CR>")
nnoremap("<A-5>", "<Cmd>BufferGoto 5<CR>")
nnoremap("<A-6>", "<Cmd>BufferGoto 6<CR>")
nnoremap("<A-7>", "<Cmd>BufferGoto 7<CR>")
nnoremap("<A-8>", "<Cmd>BufferGoto 8<CR>")
nnoremap("<A-9>", "<Cmd>BufferGoto 9<CR>")
nnoremap("<A-0>", "<Cmd>BufferLast<CR>")



-- Tabs
-- Using vim tabs
nnoremap('<leader>t', ":tabedit")

-- Zk
-- Create a new note after asking for its title.

-- Todo make something that creates the 3 needed templates
-- Fleeting note
-- Reference note
-- Slipbox note

-- Edit WIKI

-- Create a new Fleeting note
nnoremap("<leader>znf", "<Cmd>ZkNew { title = vim.fn.input('Fleeting note: '), template = 'fleeting.md' } <CR>")
-- Create a new  Slipbox note
nnoremap("<leader>zns", "<Cmd>ZkNew { title = vim.fn.input('Slipbox note: '), template = 'slipbox.md' } <CR>")
-- Create a new  Reference note
nnoremap("<leader>znr", "<Cmd>ZkNew { title = vim.fn.input('Reference note: '), template = 'reference.md' }  <CR>")
-- Create a new Slide
nnoremap("<leader>znl", "<Cmd>ZkNew { title = vim.fn.input('Slides: '), dir = 'Slides', template = 'slides.md' }  <CR>")


-- Edit templates
nnoremap("<leader>ezt", "<Cmd>e ~/.config/zk/templates/ <CR>")


-- Open notes.
nnoremap("<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>")

-- Open notes associated with the selected tags.
nnoremap("<leader>zt", "<Cmd>ZkTags<CR>")

