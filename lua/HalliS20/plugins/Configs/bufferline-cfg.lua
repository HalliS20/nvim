local options = {
    -------------------- STYLES -----------------------------
    separator_style = "thin",
    -------------------- APPEARANCE -------------------------
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    -------------------- SIZES ------------------------------
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 23,
    -------------------- BEHAVIOUR --------------------------
    show_buffer_close_icons = true,
    show_close_icon = false,
    always_show_bufferline = true,
    -------------------- LSP --------------------------------
    diagnostics = "nvim_lsp",
    ---------------------For hovering actions-------------------
    hover = {
        enabled = true,
        delay = 50,
        reveal = { "close" },
    },
    -------------------- For NeoTree Offset -------------------
    offsets = {
        {
            filetype = "", --"neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
            separator_style = "slant",
            border = "slant",
        },
    },
}
return options
