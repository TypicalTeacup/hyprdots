return {
	{
		"catppuccin/nvim",
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		config = function()
			require("transparent").toggle(true)
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
}
