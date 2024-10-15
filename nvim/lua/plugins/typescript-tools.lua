return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
  enabled = true,
  config = function ()
     require("typescript-tools").setup({})
  end
}
