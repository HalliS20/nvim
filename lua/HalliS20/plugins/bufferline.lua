return {
  "akinsho/bufferline.nvim",
  version = "v3.*",
  -- event = "VeryLazy",
  lazy = false,
  keys = {
    { "<C-,>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "<C-.>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<Leader>x,", "<cmd>BufferLineCloseLeft<CR>", desc = "close buffers to left" },
    { "<Leader>x.", "<cmd>BufferLineCloseRight<CR>", desc = "close buffers to Right" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    -- 'famiu/bufdelete.nvim',
  },
  config = function()
    vim.o.mousemoveevent = true
    require("bufferline").setup({
      options = require("HalliS20.plugins.Configs.bufferline-cfg"),
    })
  end,

  ------------------- set keybinds -------------------
  vim.api.nvim_set_keymap("n", "<Leader>xx", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true }),
}
