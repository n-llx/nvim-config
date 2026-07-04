return {
  -- Local checkout of https://github.com/n-llx/ipynb.nvim (developed in
  -- ~/projects/ipynb.nvim, mirrored to GitHub). Combines cell editing
  -- (ipynb-nvim) and cell execution (ipynb-run-nvim) in one repo, since
  -- the latter depends on the former's exported cell-parsing functions.
  dir = vim.fn.expand("~/projects/ipynb.nvim"),
  name = "ipynb.nvim",
  -- Must load eagerly (not lazy-loaded): it needs its BufReadCmd
  -- registered before Neovim tries to open any .ipynb file, including
  -- one passed directly on the command line at startup.
  lazy = false,
  config = function()
    require("ipynb-nvim").setup()
    require("ipynb-run-nvim").setup()
  end,
}
