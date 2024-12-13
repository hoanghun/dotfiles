return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  config = function()
    require("noice").setup({
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      cmdline = {
        view = "cmdline",
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
  }
}
