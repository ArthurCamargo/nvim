vim.opt.background= "dark"

local color = 'kanagawa'

vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })

local status_ok, _ = pcall(vim.cmd, "colo " .. color)
if not status_ok then
    vim.notify("[!] Colorscheme " .. color  .. "not foud!")
    return
end

