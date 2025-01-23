return {
  {
    "stevearc/conform.nvim",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function()
      local conform = require("conform")

      local use_prettier = { "prettierd", "prettier", stop_after_first = true }

      conform.setup({
        formatters_by_ft = {
          javascript = use_prettier,
          typescript = use_prettier,
          javascriptreact = use_prettier,
          typescriptreact = use_prettier,
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
