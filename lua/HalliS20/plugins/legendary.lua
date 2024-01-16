return {
  "mrjones2014/legendary.nvim",
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  -- dependencies = { 'kkharji/sqlite.lua' }

  keymaps = {
    -- map keys to a command
    { "<leader>ff", ":Telescope find_files", description = "Find files" },
  },
  vim.api.nvim_set_keymap("n", "<leader>fk", ":Legendary<CR>", { noremap = true, silent = true }),
}
