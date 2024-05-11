local M = {}

-- Configure find files builtin with custom opts
-- For neovim's config directory
function M.dir_nvim()
    local opts = {
        prompt_title = "Neovim", -- Title for the picker
        shorten_path = false, -- Display full paths, short paths are ugly
        cwd = "~/.config/nvim/lua/core/", -- Set path to directory whose files should be shown
        file_ignore_patterns = { ".git", ".png", "tags" }, -- Folder/files to be ignored
        initial_mode = "insert", -- Start in insert mode
        selection_strategy = "reset", -- Start selection from top when list changes
        theme = require("telescope.themes").get_dropdown({}), -- Theme to be used, can be omitted to use defaults
        previewer = false, -- Disable previewer
    }

    -- Pass opts to find_files
    require("telescope.builtin").find_files(opts)
end

function M.dir_code()
    local opts = {
        prompt_title = "Code", -- Title for the picker
        shorten_path = false, -- Display full paths, short paths are ugly
        cwd = "~/Coisas/Code/",
        file_ignore_patterns = { ".git", ".png", "tags" }, -- Folder/files to be ignored
        initial_mode = "insert", -- Start in insert mode
        selection_strategy = "reset", -- Start selection from top when list changes
        theme = require("telescope.themes").get_dropdown({}), -- Theme to be used, can be omitted to use defaults
        previewer = false, -- Disable previewer
    }

    -- Pass opts to find_files
    require("telescope.builtin").find_files(opts)
end


function M.dir_university10()
    local opts = {
        prompt_title = "University", -- Title for the picker
        shorten_path = false, -- Display full paths, short paths are ugly
        cwd = "~/Coisas/Universidade/",
        search_dirs = {"Semestre-10"},
        file_ignore_patterns = {".pdf", ".git", ".png", "tags" }, -- Folder/files to be ignored
        initial_mode = "insert", -- Start in insert mode
        theme = require("telescope.themes").get_dropdown({}), -- Theme to be used, can be omitted to use defaults
        previewer = true, -- Enable preview
    }

    -- Pass opts to find_files
    require("telescope.builtin").find_files(opts)
end

return M
