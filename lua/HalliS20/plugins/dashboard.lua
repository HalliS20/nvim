return {
  "nvimdev/dashboard-nvim",
  config = function()
    require("HalliS20.plugins.Configs.dashboard-cfg")

    ----------------------------------------- Change theme while in dashboard -----------------------------------------
    -------- dont need this for now
    -- local schemes = {}
    -- schemes.a = "kanagawa"
    -- schemes.b = "nightfly"
    -- schemes.c = "tokyonight"
    -- schemes.d = "catppuccin"
    -- schemes.e = "oxocarbon"
    -- schemes.f = "ayu-mirage"
    -- local scheme = schemes.f
    -- vim.cmd(string.format("autocmd BufEnter * colorscheme %s", scheme))
    -- vim.cmd(string.format("autocmd vimenter * colorscheme default"))
    ------------------------------------------- Declare random colors and create table -------------------------------------------
    local sweetRed = "#ff173a"
    local sweetBlue = "#00a8ff"
    local acidGreen = "#00ff00"
    local seaGreen = "#00ff7f"
    local nerdOrange = "#ff9000"
    local nerdPurple = "#ff00ff"
    local mellowYellow = "#ffff00"

    local colors = {
      sweetRed,
      sweetBlue,
      acidGreen,
      seaGreen,
      nerdOrange,
      nerdPurple,
      mellowYellow,
    }

    ---------------------------------------- Set Random color for Dashboard Header ----------------------------------------
    local seed_value = tostring(os.time()) .. tostring(vim.fn.getpid())
    local seed_integer = tonumber(seed_value)
    if seed_integer then
      math.randomseed(seed_integer)
    else -- Windows can't generate a seed integer, so just use a random number
      math.randomseed(os.time())
    end

    local ranny = math.random(#colors)
    local color = colors[ranny]
    vim.cmd(string.format("autocmd vimenter * hi DashboardHeader guifg=%s", color))
    vim.cmd(string.format("autocmd colorscheme * hi DashboardHeader guifg=%s", color))
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
