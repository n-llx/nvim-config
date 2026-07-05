return {
  -- https://github.com/n-llx/marimo.nvim — a thin launcher for marimo
  -- (https://marimo.io) notebooks. Real .py files get pyright natively
  -- (filetype=python, no custom filetype/proxy needed), and marimo's own
  -- `edit --watch` provides the kernel, reactive execution, and browser UI.
  "n-llx/marimo.nvim",
  name = "marimo.nvim",
  ft = "python", -- no BufReadCmd needed; plain filetype-based lazy-load is enough
  config = function()
    require("marimo-nvim").setup()
  end,
}
