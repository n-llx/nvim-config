return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master", -- the "main" branch rewrite requires Neovim 0.12+ (nightly); we're on 0.11.6
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "vim", "vimdoc", "python", "markdown", "markdown_inline" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
