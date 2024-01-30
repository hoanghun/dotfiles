return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
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
      },
    })
  end
}
