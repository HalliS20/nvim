return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.eslint_d,
      },
    })
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, { noremap = true, silent = true })
  end,
}
