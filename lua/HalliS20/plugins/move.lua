return {
  "fedepujol/move.nvim",

  config = function()
    require("move").setup({
      -- These are the default mappings, but you can remap them to whatever you like.
    })
    -------------------------For Moving lines--------------------------
    local opts = { noremap = true, silent = true }

    -- Normal-mode commands
    vim.keymap.set("n", "<c-s-down>", ":MoveLine(1)<CR>", opts)
    vim.keymap.set("n", "<c-s-up>", ":MoveLine(-1)<CR>", opts)
    vim.keymap.set("n", "<c-s-left>", ":MoveHChar(-1)<CR>", opts)
    vim.keymap.set("n", "<c-s-right>", ":MoveHChar(1)<CR>", opts)
    vim.keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opts)
    vim.keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>", opts)

    -- Visual-mode commands
    vim.keymap.set("v", "<c-s-down>", ":MoveBlock(1)<CR>", opts)
    vim.keymap.set("v", "<c-s-up>", ":MoveBlock(-1)<CR>", opts)
    vim.keymap.set("v", "<c-s-left>", ":MoveHBlock(-1)<CR>", opts)
    vim.keymap.set("v", "<c-s-right>", ":MoveHBlock(1)<CR>", opts)
  end,
}
