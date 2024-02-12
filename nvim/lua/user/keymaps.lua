local nnoremap = require("user.keymap_utils").nnoremap
local vnoremap = require("user.keymap_utils").vnoremap
local inoremap = require("user.keymap_utils").inoremap
local tnoremap = require("user.keymap_utils").tnoremap
local xnoremap = require("user.keymap_utils").xnoremap

-- Map Oil to <leader>e
nnoremap("<leader>e", function()
  require("oil").toggle_float()
end)

nnoremap("<leader>fb", require("telescope.builtin").buffers, { desc = "[F]ind Open [B]uffers" })
nnoremap("<leader>fh", require("telescope.builtin").help_tags, { desc = "[F]ind [H]elp" })
nnoremap("<leader>fw", require("telescope.builtin").grep_string, { desc = "[F]ind current [W]ord" })
nnoremap("<leader>fg", require("telescope.builtin").live_grep, { desc = "[F]ind by [G]rep" })
nnoremap("<leader>fd", require("telescope.builtin").diagnostics, { desc = "[F]ind [D]iagnostics" })

nnoremap("<leader>fc", function()
  require("telescope.builtin").commands(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[F]ind [C]ommands" })

nnoremap("<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer]" })

nnoremap("<leader>ff", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { desc = "[F]ind [F]iles" })

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
