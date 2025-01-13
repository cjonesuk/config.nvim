return {
  "echasnovski/mini.nvim",
  enabled = true,
  config = function()
    local statusline = require("mini.statusline")
    local ai = require("mini.ai")
    local gen_spec = ai.gen_spec

    statusline.setup({ use_icons = true })

    ai.setup({
      custom_textobjects = {
        -- Function definition (needs treesitter queries with these captures)
        F = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
        C = gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
      },
    })
  end,
}
