return {
  -- https://github.com/n-llx/ipynb.nvim — combines cell editing (ipynb-nvim),
  -- cell execution (ipynb-run-nvim), and real pyright LSP (ipynb-lsp-nvim) in
  -- one repo, since the latter two depend on ipynb-nvim's exported
  -- cell-parsing functions. lazy.nvim clones this like any other plugin, so
  -- this config is portable to a fresh machine with no local checkout required.
  "n-llx/ipynb.nvim",
  name = "ipynb.nvim",
  -- Must load eagerly (not lazy-loaded): it needs its BufReadCmd
  -- registered before Neovim tries to open any .ipynb file, including
  -- one passed directly on the command line at startup.
  lazy = false,
  config = function()
    require("ipynb-nvim").setup()
    require("ipynb-run-nvim").setup()
    require("ipynb-lsp-nvim").setup()
  end,
}
