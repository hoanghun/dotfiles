local nnoremap = require("user.keymap_utils").nnoremap
local vnoremap = require("user.keymap_utils").vnoremap
local inoremap = require("user.keymap_utils").inoremap
local tnoremap = require("user.keymap_utils").tnoremap
local xnoremap = require("user.keymap_utils").xnoremap

-- Map Oil to <leader>e
nnoremap("<leader>1", function()
  require("oil").toggle_float()
end)

nnoremap("<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch Open [B]uffers" })
nnoremap("<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
nnoremap("<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
nnoremap("<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
nnoremap("<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

nnoremap("<leader>sc", function()
  require("telescope.builtin").commands(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[S]earch [C]ommands" })

nnoremap("<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer]" })

nnoremap("<leader>sf", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { desc = "[S]earch [F]iles" })

nnoremap("<leader>ss", function()
  require("telescope.builtin").spell_suggest(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[S]earch [S]pelling suggestions" })
