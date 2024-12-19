return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			html = { "prettierd" },
			css = { "prettierd" },
			svelte = { "prettierd" },
			scss = { "prettierd" },
			json = { "prettierd" },
			less = { "prettierd" },
			yaml = { "prettierd" },
			vue = { "prettierd" },
			python = { "isort", "black" },
			lua = { "stylua" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
		},
	},
}
