return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"javascript",
				"typescript",
				"php",
				"vue",
				"html",
				"css",
				"go",
				"gomod",
				"gosum",
				"java",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = false,
					node_decremental = "<BS>",
				},
			},
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}
	end,
}
