return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins so the colorscheme is ready first
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
