return {
  "neovim/nvim-lspconfig",
  config = function()
    require 'lspconfig'.ocamllsp.setup {}
    require 'lspconfig'.pyright.setup {}
    require 'lspconfig'.rust_analyzer.setup {}
    require 'lspconfig'.tsserver.setup {}

    require 'lspconfig'.lua_ls.setup {
      on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
          client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
            Lua = {
              runtime = {
                version = 'LuaJIT'
              },
              workspace = {
                checkThirdParty = false,
                library = {
                  vim.env.VIMRUNTIME
                }
              }
            }
          })

          client.notify("workspace/didChangeConfiguration",
            { settings = client.config.settings })
        end
        return true
      end
    }

    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local nnoremap = require("user.keymap_utils").nnoremap
    nnoremap('<space><F1>', vim.diagnostic.open_float, { desc = "Open diagnostics" })
    nnoremap('<S-F2>', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
    nnoremap('<F2>', vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
    nnoremap('<space>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        nnoremap('gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration" })
        nnoremap('gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
        nnoremap('<F1>', vim.lsp.buf.hover, { buffer = ev.buf, desc = "Documentation hover" })
        nnoremap('gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
        nnoremap('<C-k>', vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Show signature help" })
        nnoremap('<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = ev.buf, desc = "Add workspace folder" })
        nnoremap('<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = ev.buf, desc = "Remove workspace foler" })
        nnoremap('<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, { buffer = ev.buf, desc = "List workspace folders" })
        nnoremap('<space>D', vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Show type definition" })
        nnoremap('<space>rn', vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
        nnoremap('<space><CR>', vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action" })
        nnoremap('gr', vim.lsp.buf.references, { buffer = ev.buf, desc = "Go to reference" })
        nnoremap('<space>fc', function()
          vim.lsp.buf.format { async = true }
        end, { buffer = ev.buf, desc = "Format Code" })
      end,
    })
  end
}
