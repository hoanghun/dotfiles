return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    return {
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
      },
      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
          },
          {
            "diff",
          },
        },
        lualine_c = {
          {
            "diagnostics",
          },
          {
            "filename",
          },
        },
        lualine_x = { "filesize" },
        lualine_y = {
          {
            "filetype",
            icons_enabled = false,
            color = {
              fg = "#1C1D21",
              bg = "#eba0ac",
            },
          },
        },
        lualine_z = {
          {
            "location",
            icon = "",
            color = {
              fg = "#1c1d21",
              bg = "#f2cdcd",
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
    }
  end,
  enabled = true
}
