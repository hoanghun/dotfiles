return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-x>"] = actions.delete_buffer,
          },
        },
        file_ignore_patterns = {
          "node_modules",
        },
        hidden = true,
        sorting_strategy = "ascending",
      },

      pickers = {
        buffers = {
          sort_mru = true,
          ignore_current_buffer = true,
        }
      }
    })
    pcall(require("telescope").load_extension, "fzf")
  end
}
