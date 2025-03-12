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
        format_on_save = function(bufnr)
          -- Disable with a global or buffer-local variable
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end
          return { timeout_ms = 500, lsp_format = "fallback" }
        end,
      })

      vim.keymap.set({ "n", "v" }, "<leader>lf", function()
        conform.format({
          lsp_format = "fallback",
        })
      end, { desc = "Format file or range (in visual mode)" })

      vim.api.nvim_create_user_command("FormatDisable", function(args)
        if args.bang then
          -- FormatDisable! will disable formatting just for this buffer
          vim.b.disable_autoformat = true
        else
          vim.g.disable_autoformat = true
        end
      end, {
        desc = "Disable autoformat-on-save",
        bang = true,
      })

      vim.api.nvim_create_user_command("FormatEnable", function()
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
      end, {
        desc = "Re-enable autoformat-on-save",
      })
    end,
  },
}
