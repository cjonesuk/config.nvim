return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      local kanagawa = require("kanagawa")

      kanagawa.setup({
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "lotus",
        },
      })

      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
