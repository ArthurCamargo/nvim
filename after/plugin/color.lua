vim.opt.background= "dark"

local color = 'deus'


vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("hi! Normal guibg=NONE ctermbg=NONE")
    vim.cmd("hi! NonText guibg=NONE ctermbg=NONE")
  end,
})


local status_ok, _ = pcall(vim.cmd, "colo " .. color)
if not status_ok then
    vim.notify("[!] Colorscheme " .. color  .. "not foud!")
    return
end

