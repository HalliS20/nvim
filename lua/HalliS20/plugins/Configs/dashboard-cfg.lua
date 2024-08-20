local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

local conf = {}

math.randomseed(os.time())
local ascii = require("HalliS20.plugins.Configs.ascii")
local ranny = math.random(#ascii)
local asciiart = ascii[ranny]
conf.header = asciiart

conf.center = {
  {
    icon = "󰈞  ",
    desc = "Find  File                              ",
    action = "Telescope find_files",
    key = "<Leader> f f",
  },
  {
    icon = "󰈢  ",
    desc = "Recently opened files                   ",
    action = "Telescope oldfiles",
    key = "<Leader> f r",
  },
  {
    icon = "󰈬  ",
    desc = "Live grep                            ",
    action = "Telescope live_grep",
    key = "<Leader> f g",
  },
  {
    icon = "󰈬  ",
    desc = "ChangegDirectory                            ",
    action = "Telescope zoxide list",
    key = "<Leader> c d",
  },
  {
    icon = "  ",
    desc = "Open Neo-Tree                        ",
    action = "Neotree toggle",
    key = "<Leader> e e",
  },
  {
    icon = "  ",
    desc = "New file                                ",
    action = "enew",
    key = "e",
  },
  {
    icon = "󰗼  ",
    desc = "Quit Nvim                               ",
    -- desc = "Quit Nvim                               ",
    action = "qa",
    key = "q",
  },
}

dashboard.setup({
  theme = "doom",
  shortcut_type = "number",
  config = conf,
})

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end,
})
