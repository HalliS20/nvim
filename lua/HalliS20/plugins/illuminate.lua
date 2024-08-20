return {
  "RRethy/vim-illuminate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    delay = 200,
    under_cursor = false,
    modes_allowlist = { "n", "no", "nt" },
    filetypes_denylist = {
      "DiffviewFileHistory",
      "DiffviewFiles",
      "fugitive",
      "git",
      "minifiles",
      "neo-tree",
      "Outline",
      "SidebarNvim",
    },
  },
  keys = {
    { "<leader>]", desc = "Next Reference" },
    { "<leader>[", desc = "Prev Reference" },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)

    local function map(key, dir, buffer)
      vim.keymap.set("n", key, function()
        require("illuminate")["goto_" .. dir .. "_reference"](false)
      end, {
        desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference",
        buffer = buffer,
      })
    end

    map("<leader>]", "next")
    map("<leader>[", "prev")

    -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("rafi_illuminate", {}),
      callback = function()
        local buffer = vim.api.nvim_get_current_buf()
        map("<leader>]", "next", buffer)
        map("<leader>[", "prev", buffer)
      end,
    })
  end,
}
