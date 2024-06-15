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
  pattern = {"*.ts, *.js, *.tsx, *.jsx"},
  command = "set tabstop=2 | set shiftwidth=2",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.py"},
  command = "map <F5> :!python %<CR>",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.html, *.htm"},
  command = "map <F5> :!firefox %<CR>",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.html, *.htm"},
  command = "set tabstop=2 | set shiftwidth=2",
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.tex, *.md, *.html"},
  command = "map <leader>u vipJvipgq"
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = {"*.snippets"},
    command = "CmpUltisnipsReloadSnippets"
})


-- vim.api.nvim_create_autocmd({"WinNew"}, {
    --pattern = {"*"},
    --command = "wincmd L"
--})
