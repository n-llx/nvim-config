-- Only the severities listed here override Neovim's default sign text
-- (first letter of the severity name: E/W/I/H) — the rest fall back untouched.
vim.diagnostic.config({
  -- When multiple diagnostics land on the same line, show the sign for
  -- the most severe one instead of an arbitrary one (e.g. an Error should
  -- win over a same-line Hint).
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "❗",
      [vim.diagnostic.severity.WARN] = "❔",
      [vim.diagnostic.severity.INFO] = "💤",
      [vim.diagnostic.severity.HINT] = "🔎",
    },
  },
})

-- Fires once per buffer when a language server attaches to it (mason-lspconfig's
-- vim.lsp.enable() triggers this automatically once pyright is installed).
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    local map = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
    end

    map("n", "K", vim.lsp.buf.hover)
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "gr", vim.lsp.buf.references)
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("n", "<leader>ca", vim.lsp.buf.code_action)
    map("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end)
    map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end)

    -- Native completion (Neovim 0.11+): no completion plugin needed,
    -- the LSP client itself drives the popup menu as you type.
    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end
  end,
})
