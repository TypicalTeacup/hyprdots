return {
    "mfussenegger/nvim-lint",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            svelte = { "eslint_d" },
            vue = { "eslint_d" },
            php = { "phpcs" },
            python = { "pylint" },
            lua = { "luacheck" },
        }
        local augroup = vim.api.nvim_create_augroup("Linting", { clear = true })
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = augroup,
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
