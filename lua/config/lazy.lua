-- Bootstrap lazy.nvim: clone it to the standard data path if it isn't
-- there yet, so a fresh machine self-installs the plugin manager on
-- first launch instead of requiring a manual install step.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Every file in lua/plugins/ returns a plugin spec (or list of
    -- specs) and lazy.nvim loads them all automatically.
    { import = "plugins" },
  },
})
