return {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "BufRead",

    opts = require("HalliS20.plugins.Configs.ufo.ufo-opts"),
    init = require("HalliS20.plugins.Configs.ufo.ufo-init"),
    config = require("HalliS20.plugins.Configs.ufo.ufo-cfg"),
}
