return {
  "hedyhli/outline.nvim",
  config = function()
    vim.keymap.set("n", "<A-7>", "<cmd>Outline<CR>",
      { desc = "Toggle Outline" })

    require("outline").setup {
      outline_window = {
        position = "left"
      },
      preview_window = {
        auto_preview = false
      },
      keymaps = {
        close = {}
      }
    }
  end,
}
