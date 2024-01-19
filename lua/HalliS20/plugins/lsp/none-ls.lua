return {
    "nvimtools/none-ls.nvim",

    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.lua_format,

                ---------------- python ----------------
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,

                ---------------- c++ ----------------
                null_ls.builtins.formatting.clang_format,

                ---------------- js,html,css and web ----------------
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.eslint_d,
                null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.diagnostics.eslint_d,
            },
            formatting = {
                tabWidth = 8,
                tab_size = 8,
                indent = 8,
                indentSize = 8,
                indentWidth = 8,
                singleQuote = false,
                trailingComma = "all",
                configPrecedence = "prefer-file",
                semi = false,
                useTabs = false,
            },
            -- on_attach = function(client, bufnr)
            --   if client.supports_method("textDocument/formatting") then
            --     vim.api.nvim_clear_autocmds({
            --       group = augroup,
            --       buffer = bufnr,
            --     })
            --     vim.api.nvim_create_autocmd("BufWritePre", {
            --       group = augroup,
            --       buffer = bufnr,
            --       callback = function()
            --         -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
            --         -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
            --         vim.lsp.buf.format({ async = false })
            --       end,
            --     })
            --   end
            -- end,
        })
        vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { noremap = true, silent = true })
    end,
}
