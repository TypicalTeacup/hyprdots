return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local function map(lhs, rhs, desc, bufnr, mode)
			if not mode then
				mode = "n"
			end
			local opts = { buffer = bufnr, noremap = true, silent = true, desc = "LSP: " .. desc }

			vim.keymap.set(mode, lhs, rhs, opts)
		end

		local on_attach = function(_, bufnr)
			map("gR", ":Telescope lsp_references<CR>", "Show References", bufnr)
			map("gD", vim.lsp.buf.declaration, "Go to Declaration", bufnr)
			map("gd", ":Telescope lsp_definitions<CR>", "Show Definitions", bufnr)
			map("gi", ":Telescope lsp_implementations<CR>", "Show implementations", bufnr)
			map("<leader>ca", vim.lsp.buf.code_action, "Code Actions", bufnr, { "n", "v" })
			map("<leader>rf", vim.lsp.buf.rename, "Refactor", bufnr)
			map("<leader>d", vim.diagnostic.open_float, "Line diagnostics", bufnr)
			map("<leader>D", ":Telescope diagnostics bufnr=0<CR>", "Buffer diagnostics", bufnr)
			map("<leader>i", vim.lsp.buf.hover, "Show documentation", bufnr)
		end

		local signs = {
			Error = " ",
			Warn = " ",
			Hint = " ",
			Info = " ",
		}
		for type, sign in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = sign, texthl = hl, numhl = "" })
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()
		local util = require("lspconfig/util")
		local function setup(lsp, opts)
			if not opts then
				opts = {}
			end
			opts.on_attach = on_attach
			opts.capabilities = capabilities
			lspconfig[lsp].setup(opts)
		end

		setup("ts_ls")
		setup("html")
		setup("lua_ls", {
			settings = {
				Lua = {
					format = {
						enable = false,
						defaultConfig = {
							indent_style = "space",
							indent_size = 4,
							quote_style = "double",
							call_arg_parentheses = "keep",

							align_call_args = true,
							align_function_params = true,
							break_all_list_when_line_exceed = true,
						},
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
		setup("emmet_ls", {
			filetypes = {
				"html",
				"typescriptreact",
				"javascriptreact",
				"css",
				"sass",
				"scss",
				"less",
				"svelte",
				"vue",
				"blade",
			},
		})
		setup("cssls")
		setup("volar", {
			init_options = {
				typescript = {
					tsdk = "/usr/lib/node_modules/typescript/lib",
				},
			},
		})
		setup("jdtls")
		setup("pyright")
		setup("tailwindcss")
		setup("intelephense")
		setup("gopls")
	end,
}
