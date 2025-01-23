return {
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = true,
    dependencies = {
      "williamboman/mason.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      local mason = require("mason")

      local mason_lspconfig = require("mason-lspconfig")

      local mason_tool_installer = require("mason-tool-installer")

      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "sqlls",
          "tailwindcss",
        },
        automatic_installation = false,
      })

      mason_tool_installer.setup({
        ensure_installed = {
          "stylua",
          "prettier",
          "isort",
          "black",
          "pylint",
          "eslint_d",
        },
      })
    end,
  },
}
