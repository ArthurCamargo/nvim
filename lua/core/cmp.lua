local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, ulti = pcall(require, "cmp_nvim_ultisnips.mappings")
if not snip_status_ok then
  return
end

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local async = require("plenary.async")
-- local notify = require("notify").async


--   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "󰡱",
  Constructor = "",
  Field = "",
  Variable = "󰫧",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "v",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "+",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    expand = function(args)
        vim.fn['#UltiSnips#Anon'](args.body)
    end,
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
        ulti.jump_backwards(fallback)
    end, {
      "i",
      "s",
    }),
    ["<C-j>"] = cmp.mapping(function(fallback)
        ulti.expand_or_jump_forwards(fallback)
    end, {
    "i",
    "s",
    }),
    ["<CR>"] = cmp.mapping.confirm { select = true},
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.menu = ({
        nvim_lua = "[NVIM_LUA]",
        nvim_lsp = "[LSP]",
        ultisnips = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
        calc = "[Calc]",
        spell = "[Spell]"
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "ultisnips" },
    { name = "nvim_lua"},
    { name = "spell"},
    { name = "nvim_lsp"},
    { name = "buffer" },
    { name = "path" },
    { name = "calc"}
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
}
