return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim",
    'windwp/nvim-autopairs',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require 'cmp'
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    require("nvim-autopairs").setup()

    -- Integrate nvim-autopairs with cmp
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
        ['<C-d>'] = cmp.mapping.scroll_docs(4),  -- Down
        -- C-b (back) C-f (forward) for snippet placeholder navigation.
        ['<C-Space>'] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- select suggestion
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = "buffer",  max_item_count = 5 }, -- text within current buffer
        { name = "path",    max_item_count = 3 }, -- file system paths
      },
      -- Enable pictogram icons for lsp/autocompletion
      formatting = {
        expandable_indicator = true,
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 75,
          ellipsis_char = "...",
          before = function(entry, vim_item)
            vim_item.menu = ({
              buffer = '[Buffer]',
              luasnip = '[Snip]',
              nvim_lsp = '[LSP]',
              nvim_lua = '[API]',
              path = '[Path]',
              rg = '[RG]',
            })[entry.source.name]
            return vim_item
          end
        }),
      },
    }
  end
}
