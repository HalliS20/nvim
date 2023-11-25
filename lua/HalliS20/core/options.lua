local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

------------------tab code---------------------
local tabsize = 4
vim.api.nvim_set_option("tabstop", tabsize)
vim.api.nvim_set_option("shiftwidth", tabsize)
vim.api.nvim_set_option("expandtab", true)
opt.autoindent = true -- copy indent from current line when starting new one
-----------------------------------------------
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

vim.opt.numberwidth = 3

----------------------- Integrate NEOtree with NvimTree ------------------------------
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon]])
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeDirectoryName NvimTreeFolderName]])
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink]])
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeRootName NvimTreeRootFolder]])
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName]])
vim.cmd([[autocmd ColorScheme * highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile]])
