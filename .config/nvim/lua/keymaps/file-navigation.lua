local function map(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { silent = true, desc = desc })
end

map("<leader>e", ":Oil<CR>", "Browse Files")

-- telescope
local telescopeBuiltin = require("telescope.builtin")
map("<leader>ff", telescopeBuiltin.find_files, "Find Files")
map("<leader>gf", telescopeBuiltin.live_grep, "Grep Files")
map("<leader>b", telescopeBuiltin.buffers, "Show Buffers")
