return {
  {
    -- Bridges mason.nvim (installs LSP server binaries) with Neovim's
    -- native LSP client. `ensure_installed` auto-installs pyright, and
    -- `automatic_enable` (default true) calls vim.lsp.enable() for us
    -- once it's installed, so it attaches to .py files with no extra step.
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "pyright" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
}
