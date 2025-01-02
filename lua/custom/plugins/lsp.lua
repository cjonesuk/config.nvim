return {
  {
    "neovim/nvim-lspconfig",
    enabled = true,
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      local nvim_lsp = require("lspconfig")
      -- Lua
      nvim_lsp.lua_ls.setup { capabilities = capabilities }

      -- TypeScript
      nvim_lsp.ts_ls.setup {
        -- on_attach = on_attach,
        -- filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
        -- cmd = { "typescript-language-server", "--stdio" }
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end

          if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({
                  bufnr = args.buf,
                  id = client.id
                })
              end
            })
          end
        end,
      })
    end,
  }
}
