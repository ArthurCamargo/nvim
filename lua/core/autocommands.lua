local nnoremap = require("core.keymap").nnoremap
local vnoremap = require("core.keymap").vnoremap
local inoremap = require("core.keymap").inoremap
local snoremap = require("core.keymap").snoremap
local nmap = require("core.keymap").nmap
local imap = require("core.keymap").imap
local smap = require("core.keymap").smap




vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.go"},
  command = "map <F5> :!go run %<CR>",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.cpp, *.c, Makefile"},
  command = "map <F5> :!go run %<CR>",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.tex, *.md"},
  command = "map <leader>u vipJvipgq"
})

-- vim.api.nvim_create_autocmd({"WinNew"}, {
    --pattern = {"*"},
    --command = "wincmd L"
--})
