return {
    "akinsho/bufferline.nvim",
    keys = {
        { "<C-,>",      "<cmd>BufferLineCyclePrev<cr>",  desc = "Prev buffer" },
        { "<C-.>",      "<cmd>BufferLineCycleNext<cr>",  desc = "Next buffer" },
        { "<Leader>x,", "<cmd>BufferLineCloseLeft<CR>",  desc = "close buffers to left" },
        { "<Leader>x.", "<cmd>BufferLineCloseRight<CR>", desc = "close buffers to Right" },
    },
    event = "VeryLazy",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    setup = function()
        vim.o.mousemoveevent = true
        require("bufferline").setup({
            options = require("HalliS20.plugins.Configs.bufferline-cfg"),
        })
    end, --

}
