local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

------------------tab code---------------------
opt.tabstop = 4        -- number of visual spaces per TAB
opt.softtabstop = 4    -- number of spaces in tab when editing (but tabs are 8)
opt.shiftwidth = 4     -- number of spaces to use for autoindent
opt.expandtab = true   -- tabs are spaces
opt.smarttab = true    -- backspace deletes a 'shiftwidth' amount of spaces
opt.shiftround = true  -- round indent to multiple of 'shiftwidth'
opt.smartindent = true -- insert indents automatically
opt.autoindent = true  -- copy indent from current line when starting new one
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

----------------------- set zsh files to bash syntax for treesitter ------------------------------
vim.cmd([[autocmd BufNewFile,BufRead *.zsh set filetype=bash]])
vim.cmd([[
  function! SetFileType()
    let l:firstline = getline(1)
    if l:firstline =~ '^#!/bin/zsh'
      set filetype=bash
    endif
  endfunction

  autocmd BufRead,BufNewFile * call SetFileType()
]])

----------------------- buffer refresh ------------------------------
local function refreshDiagnostics()
    -- Get the current buffer number
    local bufnr = vim.api.nvim_get_current_buf()

    -- Trigger LSP diagnostics for this buffer
    vim.lsp.diagnostic.clear(bufnr)
    vim.lsp.diagnostic.get(bufnr)
    vim.lsp.buf_request(bufnr, 'textDocument/publishDiagnostics', { uri = vim.uri_from_bufnr(bufnr) }, function() end)
end

-- Function to periodically refresh diagnostics
local function scheduleDiagnosticsRefresh()
    vim.defer_fn(function()
        refreshDiagnostics()
        scheduleDiagnosticsRefresh() -- Reschedule itself
    end, 30000)                      -- Time in milliseconds
end

-- Start the scheduled diagnostics refresh
scheduleDiagnosticsRefresh()
