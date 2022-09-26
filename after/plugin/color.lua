vim.opt.background= "light"

local color = 'tokyonight-night'

local status_ok, _ = pcall(vim.cmd, "colo " .. color)
if not status_ok then
    vim.notify("[!] Colorscheme " .. color  .. "not foud!")
    return
end
