local nnoremap = require("user.keymap_utils").nnoremap
local vnoremap = require("user.keymap_utils").vnoremap
local inoremap = require("user.keymap_utils").inoremap
local tnoremap = require("user.keymap_utils").tnoremap
local xnoremap = require("user.keymap_utils").xnoremap

-- Map Oil to <leader>e
nnoremap("<leader>e", function()
  require("oil").toggle_float()
end, { desc = "Open oil" })


nnoremap("<A-e>", require("telescope.builtin").buffers, { desc = "Find Open Buffers" })
nnoremap("<leader><A-7>", require("telescope.builtin").lsp_document_symbols, { desc = "Find Document Symbols" })
nnoremap("<leader>fb", require("telescope.builtin").buffers, { desc = "Find Open Buffers" })

nnoremap("<leader>fh", require("telescope.builtin").help_tags, { desc = "Find Help" })
nnoremap("<leader>fw", require("telescope.builtin").grep_string, { desc = "Find Current Word" })

nnoremap("<A-f>", require("telescope.builtin").live_grep, { desc = "Find By Grep" })
nnoremap("<leader>fg", require("telescope.builtin").live_grep, { desc = "Find By Grep" })

nnoremap("<leader>fd", require("telescope.builtin").diagnostics, { desc = "Find Diagnostics" })

nnoremap("<leader>fc", function()
  require("telescope.builtin").commands(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "Find Commands" })

nnoremap("<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer]" })

nnoremap("<A-o>", function() require("telescope.builtin").find_files({ hidden = true }) end, { desc = "Find Files" })
nnoremap("<leader>ff", function() require("telescope.builtin").find_files({ hidden = true }) end, { desc = "Find Files" })

-- Center buffer while navigating
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("{", "{zz")
nnoremap("}", "}zz")
nnoremap("G", "Gzz")
nnoremap("gg", "ggzz")
nnoremap("<C-i>", "<C-i>zz")
nnoremap("<C-o>", "<C-o>zz")
nnoremap("%", "%zz")
nnoremap("*", "*zz")
nnoremap("#", "#zz")
inoremap("jj", "<Esc>")
