local old = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    --------------------- KEYMAPS---------------------
    vim.keymap.set("n", "<Leader>ee", "<Cmd>Neotree toggle<CR>"),
    vim.keymap.set("n", "<Leader>ef", "<Cmd>Neotree focus<CR>"),
    ------------------------------------------------------
    config = require("HalliS20.plugins.Configs.neo-tree-cfg"),
}

return old
