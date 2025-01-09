return {
  {
    "pmizio/typescript-tools.nvim",
    enabled = true,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      local keymap = vim.keymap
      local typescript = require("typescript-tools")

      typescript.setup({})

      keymap.set("n", "grd", "<cmd>TSToolsGoToSourceDefinition<CR>", { desc = "Go to Source Definition" })
    end,
  },
}
