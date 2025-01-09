return {
  {
    "pmizio/typescript-tools.nvim",
    enabled = true,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      local typescript = require("typescript-tools")

      typescript.setup({})
    end,
  },
}
