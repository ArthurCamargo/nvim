local nnoremap = require("core.keymap").nnoremap
local vnoremap = require("core.keymap").vnoremap
local inoremap = require("core.keymap").inoremap
local nmap = require("core.keymap").nmap

-- Map the leader key
vim.g.mapleader=(",")

-- Remap for Explore
nnoremap("<leader>`", "<Cmd>NvimTreeToggle<CR>")


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

-- Remaps for edditing
nnoremap("<Leader>n", ":e")
nnoremap("<Leader>evr", "<cmd>e ~/.config/nvim/lua/core/remap.lua<CR>")
nnoremap("<Leader>evp", "<cmd>e ~/.config/nvim/lua/core/packer.lua<CR>")
nnoremap("<Leader>evo", "<cmd>e ~/.config/nvim/lua/core/options.lua<CR>")
nnoremap("<Leader>evc", "<cmd>e ~/.config/nvim/lua/core/<CR>")
nnoremap("<Leader>eve", "<cmd>e ~/.config/nvim/lua/core/<CR>")
nnoremap("<Leader>ev", "<cmd>e ~/.config/nvim/init.lua<CR>")
nnoremap("<Leader>ez", "<cmd>e ~/.config/zk/config.toml<CR>")
nnoremap("<Leader>ezt", "<cmd>e ~/.config/zk/templates/<CR>")

-- Source file
nnoremap("<Leader>sv", "<Cmd>so ~/.config/nvim/init.lua<CR>")

-- Spelling
nnoremap("<leader>sp", "<Cmd>set spell spelllang=en_us,pt_br<CR>")
inoremap("<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
nnoremap("<leader>sn","<Cmd>set nospell<CR>")

-- Clipboard + usage
nmap("<Leader>p", "\"+p<CR>")
nmap("<Leader>y", "\"+y")

-- Buffer related commands
nnoremap("<Leader>q", "<Cmd>BufferClose<CR>")
nnoremap("<A-h>", "<Cmd>BufferPrevious<CR>")
nnoremap("<A-l>", "<Cmd>BufferNext<CR>")


-- Save file
nnoremap("<Leader>w", "<Cmd>w!<CR>")


-- Splits
nnoremap("<Leader>v", "<Cmd>vs<CR>")

-- Moving from splits
nnoremap("<C-h>", "<C-w><C-h>")
nnoremap("<C-l>", "<C-w><C-l>")
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")

-- No hls
nnoremap("<leader><space>", ":nohls<CR>")



-- Using Telescope functions
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")


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


-- Zk
-- Create a new note after asking for its title.

-- Edit WIKI
nnoremap("<leader>ze", "!cd $WIKI_DIR")


nnoremap("<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>")

-- Open notes.
nnoremap("<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>")

-- Open notes associated with the selected tags.
nnoremap("<leader>zt", "<Cmd>ZkTags<CR>")

-- Search for the notes matching a given query.
nnoremap("<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>")

-- Search for the notes matching the current visual selection.
nnoremap("<leader>zf", ":'<,'>ZkMatch<CR>")
