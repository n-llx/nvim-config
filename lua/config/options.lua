local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Behavior
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.updatetime = 250
opt.splitright = true
opt.splitbelow = true
