local nnoremap = require("core.keymap").nnoremap
local vnoremap = require("core.keymap").vnoremap
local inoremap = require("core.keymap").inoremap

-- Map the leader key
vim.g.mapleader=(",")

-- Super save, save as sudo
nnoremap("<leader>W", ":w !sudo -A tee % > /dev/null<CR>")

-- Resize splits 
nnoremap("<C-Down>", "<Cmd>resize -2<CR>")
nnoremap("<C-Up>", "<Cmd>resize +2<CR>")
nnoremap("<C-Left>", "<Cmd>vertical resize +2<CR>")
nnoremap("<C-Right>", "<Cmd>vertical resize -2<CR>")

nnoremap("<leader>sv", "<Cmd>vsplit<CR>") nnoremap("<leader>sh", "<Cmd>split<CR>")
nnoremap("<leader>sx", "<cmd>close<CR>")

-- Remove the highlights
nnoremap("<leader><space>", "<Cmd>nohls<CR>")

-- Trouble
nnoremap("<leader>tb", "<cmd>TroubleToggle<CR>")

-- Hold the identation in the visual mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Clipboard +
  -- Copying 
  nnoremap("<leader>yy", "\"+yy")
  nnoremap("<leader>y", "\"+y")
  vnoremap("<leader>y", "\"+y")
  -- Pasting
  nnoremap("<leader>p", "\"+p")


-- Don't overwrite the clipboard while pasting over visualmode
vnoremap("p",'"_dP')

-- Remaps for editing files
nnoremap("<leader>n", ":e ")

-- Edit nvim lua configs
nnoremap("<leader>evr", "<cmd>e ~/.config/nvim/lua/core/remap.lua<CR>")
nnoremap("<leader>evo", "<cmd>e ~/.config/nvim/lua/core/options.lua<CR>")
nnoremap("<leader>evp", "<cmd>e ~/.config/nvim/lua/plugins/<CR>")
nnoremap("<leader>evi", "<cmd>e ~/.config/nvim/init.lua<CR>")
nnoremap("<leader>eva", "<cmd>e ~/.config/nvim/lua/core/autocommands.lua<CR>")

-- Edit zshrc config
nnoremap("<leader>ezs", "<cmd>e ~/.zshrc <CR>")

-- Cheat 
nnoremap("<leader>c", "<cmd>CheatList<CR>")

-- Spelling
nnoremap("<leader>sp", "<cmd>set spell spelllang=en_us<CR>")
inoremap("<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
nnoremap("<leader>sn","<cmd>set nospell<CR>")

-- Buffer related commands
nnoremap("<leader>h", "<cmd>bprevious!<CR>")
nnoremap("<leader>l", "<cmd>bnext!<CR>")
nnoremap("<leader>q", "<cmd>bdelete!<CR>")
nnoremap("<leader>bc", "<cmd>BufferLineCloseOthers<CR>")
nnoremap("<leader>bp", "<cmd>BufferLinePick<CR>")

-- Quitting vim
nnoremap("<leader>x", "<cmd>x!<CR>")

-- Save file
nnoremap("<leader>w", "<cmd>w!<CR>")
nnoremap("<C-s>", "<cmd>w!<CR>")

-- Moving from splits
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")

-- No hls
nnoremap("<leader><space>", ":nohls<CR>")

-- lspconfig

-- Using Telescope functions
-- nnoremap("<leader><leader>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
-- nnoremap("<leader>fd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>")
-- nnoremap("<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementation()<cr>")
-- nnoremap("<leader>fs", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
-- nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
-- nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
-- nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
-- nnoremap("<leader>ft", "<cmd>lua require('telescope.builtin').treesitter()<cr>")
-- nnoremap("<leader>fo", "<cmd>lua require('telescope.builtin').oldfiles()<cr>")
-- nnoremap("<leader>fm", "<cmd>lua require('telescope.builtin').man_pages()<cr>")
-- nnoremap("<leader>fdg", "<cmd>lua require('telescope.builtin').diagnostics()<cr>")
-- nnoremap("<leader>fl", "<cmd>lua require('telescope').extensions.thesaurus.lookup()<cr>")

-- Tabs
nnoremap("<leader>to", "<cmd>tabnew<CR>")
nnoremap("<leader>tn", "<cmd>tabnext<CR>")
nnoremap("<leader>tp", "<cmd>tabprev<CR>")
nnoremap("<leader>tq", "<cmd>tabclose<CR>")

-- Git
nnoremap("<leader>gg", "<cmd>Git<CR>")
nnoremap("<leader>gh", "<cmd>Gitsigns stage_hunk<CR>")
nnoremap("<leader>gd", "<cmd>Gitsigns diffthis<CR>")
nnoremap("<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>")
nnoremap("<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
nnoremap("<leader>gH", "<cmd>Gitsigns stage_buffer<CR>")
nnoremap("<leader>gR", "<cmd>Gitsigns reset_buffer<CR>")

-- Goto buffer in position...
nnoremap("<A-1>","<Cmd>BufferLineGoToBuffer 1<CR>")
nnoremap("<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>")
nnoremap("<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>")
nnoremap("<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>")
nnoremap("<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>")
nnoremap("<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>")
nnoremap("<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>")
nnoremap("<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>")
nnoremap("<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>")
nnoremap("<A-0>", "<Cmd>BufferLast<CR>")

-- Inserting date
inoremap("<c-a-t>", "<Cmd>put =strftime('%Y-%m-%d %H:%M')<CR>")

-- Substitute current word in line
nnoremap("<leader>ss", ":s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>")
-- Substitute word over the whole file
nnoremap("<leader>sg", ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>")

