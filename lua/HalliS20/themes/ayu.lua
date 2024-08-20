return {
    "shatur/neovim-ayu",
    options = {
        integrations = {
            alpha = true,
            cmp = true,
            flash = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            lsp_trouble = true,
            mason = true,
            mini = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            navic = { enabled = true, custom_bg = "lualine" },
            neotest = true,
            noice = true,
            notify = true,
            neotree = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            which_key = true,
        },
    },
    config = function()
        vim.cmd([[autocmd colorscheme ayu-mirage highlight NoiceCmdlinePopupBorder guifg=#1b1e29]])
        vim.cmd([[autocmd colorscheme ayu-mirage highlight NoiceCmdlinePopupBorder guibg=#1b1e29]])
        vim.cmd([[autocmd colorscheme ayu-mirage highlight NoiceCmdlinePopup guibg=#1b1e29]])
    end,
}
