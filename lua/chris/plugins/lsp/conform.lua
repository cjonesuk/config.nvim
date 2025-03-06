return {
  {
    "stevearc/conform.nvim",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function()
      local conform = require("conform")

      local use_prettier = { "prettierd", "prettier", stop_after_first = true }
      local use_standard_web_dev = { "prettierd", "eslint_d" }

      conform.setup({
        formatters_by_ft = {
          javascript = use_standard_web_dev,
          typescript = use_standard_web_dev,
          javascriptreact = use_standard_web_dev,
          typescriptreact = use_standard_web_dev,
          svelte = use_prettier,
          css = use_prettier,
          html = use_prettier,
          json = use_prettier,
          yaml = use_prettier,
          markdown = use_prettier,
          graphql = use_prettier,
          lua = { "stylua" },
          python = { "isort", "black" },
          rust = { "rustfmt", lsp_format = "fallback" },
          sql = { "sqlfmt" },
        },
        format_on_save = {
          lsp_format = "fallback",
        },
      })

      vim.keymap.set({ "n", "v" }, "<leader>lf", function()
        conform.format({
          lsp_format = "fallback",
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },
}
