config = function()
  vim.g.neotree_disable_netrw = 1

  -- require("scrollbar").setup({
  --     handle = {
  --         color = vim.g.nvcode_termcolors_bg,
  --     },
  -- })

  require("neo-tree").setup({
    ------------------------Nvim Tree integration-------------------------
    vim.cmd([[
        highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
        highlight! link NeoTreeDirectoryName NvimTreeFolderName
        highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
        highlight! link NeoTreeRootName NvimTreeRootFolder
        highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
        highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
      ]]),
    --------------- for bar top par with buffers and git----------------
    source_selector = {
      winbar = true,
      statusline = true,
    },
    ----------------------- for better preview---------------------------
    window = {
      mappings = {
        ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
      },
    },
    ------------------------ Basic settings------------------------------
    default_component_configs = {

      indent = {
        -------------------- Set indent size ------------------

        indent_size = 4,
        padding = 1, -- extra padding on left hand side
        ------------------ indent line ----------------

        with_markers = false, -- i;f true, will use nvim's 'indentline' plugin
        indent_marker = "|", --|
        last_indent_marker = "└", --└
        highlight = "NeoTreeIndentMarker",
        ---------------------- for expander files--------------
        with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
        expander_collapsed = ">",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
  })
end

return config

-------------------------- NVIM TREE KEYMAPS --------------------------
--might want to find corresponding keymaps for Neo-tree
--#
-- keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
-- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })                     -- collapse file explorer
-- keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })                       -- refresh file explorer
-----------------------------------------------------------------------
