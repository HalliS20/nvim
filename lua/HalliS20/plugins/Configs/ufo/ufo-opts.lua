opts = {
    -- INFO: Uncomment to use treeitter as fold provider, otherwise nvim lsp is used
    -- provider_selector = function(bufnr, filetype, buftype)
    --   return { "treesitter", "indent" }
    -- end,
    open_fold_hl_timeout = 400,
    close_fold_kinds_for_ft = { "imports", "comment" },
    preview = {
        win_config = {
            border = { "", "─", "", "", "", "─", "", "" },
            -- winhighlight = "Normal:Folded",
            winblend = 0,
        },
        mappings = {
            scrollU = "<C-u>",
            scrollD = "<C-d>",
            jumpTop = "[",
            jumpBot = "]",
        },
    },
}

return opts
