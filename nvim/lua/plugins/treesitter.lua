return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "typescript" },
      sync_install = false,
      autotag = {
        enable = true
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
