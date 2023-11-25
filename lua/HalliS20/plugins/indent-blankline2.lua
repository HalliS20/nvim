return {
  "nvimdev/indentmini.nvim",
  event = "BufEnter",
  config = function()
    require("indentmini").setup({
      char = "",
    })
    -- use comment color
    vim.cmd.highlight("default link IndentLine Comment")
  end,
}
