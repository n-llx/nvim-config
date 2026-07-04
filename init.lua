-- Entry point. Neovim automatically runs ~/.config/nvim/init.lua on startup.

-- Leader key must be set before lazy.nvim loads plugins, since plugin
-- keymaps are often defined relative to <leader>.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.lsp")
