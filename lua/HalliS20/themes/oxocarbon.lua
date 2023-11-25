return {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    config = function()
        if vim.g.colorscheme == 'oxocarbon' then
            vim.cmd('colorscheme oxocarbon')
        end

        vim.cmd([[autocmd colorscheme oxocarbon colorscheme oxocarbon]]) ---- was to fix bufferline issue may not be needed anymore
        vim.cmd([[autocmd colorscheme oxocarbon highlight CursorLine guibg=#121212]])
        vim.cmd([[autocmd colorscheme oxocarbon highlight background guibg=#121212]])
    end,
}

--   event = foo,
--   config = bar
--   end,
