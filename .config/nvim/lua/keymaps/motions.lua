local function map(lhs, rhs, opts)
	if not opts then
		opts = {}
	end
	opts.silent = true
	vim.keymap.set("n", lhs, rhs, opts)
end
-- better <C-d> and <C-u>
map("<C-d>", "<C-d>zz")
map("<C-u>", "<C-u>zz")
-- word wrap
map("k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
map("<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- hop
map("<leader><leader>", require("hop").hint_words, { desc = "Hop Word" })
-- map("<leader>hl", require("hop").hint_lines_skip_whitespace, { desc = "Hop Lines" })
