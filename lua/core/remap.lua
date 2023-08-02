local nnoremap = require("core.keymap").nnoremap
local vnoremap = require("core.keymap").vnoremap
local inoremap = require("core.keymap").inoremap

-- Map the leader key
vim.g.mapleader=(",")

-- Remap for Explore
nnoremap('<leader>`', "<Cmd>NvimTreeToggle<CR>")

-- Super save, save as sudo
nnoremap("<leader>W", ":w !sudo -A tee % > /dev/null<CR>")

nnoremap("-", require("oil").open, { desc = "Open parent directory"})

-- Resize splits 
nnoremap("<C-Down>", "<Cmd>resize -2<CR>")
nnoremap("<C-Up>", "<Cmd>resize +2<CR>")
nnoremap("<C-Left>", "<Cmd>vertical resize +2<CR>")
nnoremap("<C-Right>", "<Cmd>vertical resize -2<CR>")

nnoremap("<leader>sv", "<Cmd>vsplit<CR>")
nnoremap("<leader>sh", "<Cmd>split<CR>")
nnoremap("<leader>sx", "<cmd>close<CR>")

-- Remove the highlights
nnoremap("<leader><space>", "<Cmd>nohls<CR>")

-- Hold the identation in the visual mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Clipboard +
nnoremap("<leader>yy", "\"+yy")

-- Don't overwrite the clipboard while pasting over visualmode
vnoremap("p",'"_dP')

-- Remaps for editing files
nnoremap("<leader>n", ":e ")

-- Edit Snippets
nnoremap("<leader>es", "<cmd>UltiSnipsEdit<CR>")


-- Edit nvim lua configs
nnoremap("<leader>evr", "<cmd>e ~/.config/nvim/lua/core/remap.lua<CR>")
nnoremap("<leader>evp", "<cmd>e ~/.config/nvim/lua/core/packer.lua<CR>")
nnoremap("<leader>evo", "<cmd>e ~/.config/nvim/lua/core/options.lua<CR>")
nnoremap("<leader>evc", "<cmd>e ~/.config/nvim/lua/core/<CR>")
nnoremap("<leader>ev", "<cmd>e ~/.config/nvim/init.lua<CR>")
nnoremap("<leader>ea", "<cmd>e ~/.config/nvim/lua/core/autocommands.lua<CR>")

-- Edit zshrc config
nnoremap("<leader>ezs", "<cmd>e ~/.zshrc <CR>")

-- Cheat 
nnoremap("<leader>c", "<cmd>CheatList<CR>")

-- Harpoon
nnoremap("<leader>qm", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>")
nnoremap("<leader>m", "<cmd>:lua require('harpoon.mark').add_file()<CR>")

-- Spelling
nnoremap("<leader>sp", "<cmd>set spell spelllang=en_us,pt_br<CR>")
inoremap("<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
nnoremap("<leader>sn","<cmd>set nospell<CR>")

-- Buffer related commands
nnoremap("<leader>q", "<cmd>bdel<CR>")
nnoremap("<leader>h", "<cmd>bprev<CR>")
nnoremap("<leader>l", "<cmd>bnext<CR>")

-- Quitting vim
nnoremap("<leader>p", "<cmd>q!<CR>")
nnoremap("<leader>ap", "<cmd>qa!<CR>")


-- Save file
nnoremap("<leader>w", "<cmd>w!<CR>")

-- Moving from splits
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")



-- No hls
nnoremap("<leader><space>", ":nohls<CR>")

-- Using Telescope functions
nnoremap("<leader><leader>", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>")
nnoremap("<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementation()<cr>")
nnoremap("<leader>fs", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>ft", "<cmd>lua require('telescope.builtin').treesitter()<cr>")
nnoremap("<leader>fo", "<cmd>lua require('telescope.builtin').oldfiles()<cr>")
nnoremap("<leader>fm", "<cmd>lua require('telescope.builtin').man_pages()<cr>")
nnoremap("<leader>fdg", "<cmd>lua require('telescope.builtin').diagnostics()<cr>")

 -- Config based
nnoremap("<leader>ffn", "<cmd>lua require('core.config.telescope').dir_nvim()<cr>")
nnoremap("<leader>ffc", "<cmd>lua require('core.config.telescope').dir_code()<cr>")
nnoremap("<leader>ffu", "<cmd>lua require('core.config.telescope').dir_university10()<cr>")

-- Tabs
nnoremap("<leader>to", "<cmd>tabnew<CR>")
nnoremap("<leader>tn", "<cmd>tabnext<CR>")
nnoremap("<leader>tp", "<cmd>tabprev<CR>")


-- Git

nnoremap("<leader>ga", "<cmd>Git<CR>")

-- Goto buffer in position...
nnoremap("<leader>H", "<Cmd>bnext<CR>")
nnoremap("<leader>L", "<Cmd>bprevious<CR>")
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

-- Substitute word over the whole file
nnoremap("<leader>ss", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
