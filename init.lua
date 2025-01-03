-- Temporary workaround for https://github.com/neovim/neovim/issues/31675
vim.hl = vim.highlight

require("chris.core")
require("chris.lazy")
-- require("custom.lazy")

-- -- Options
-- vim.opt.shiftwidth = 4
-- vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.clipboard = "unnamedplus"
--
-- -- Executing lua
-- vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
-- vim.keymap.set("n", "<space>x", ":.lua<CR>")
-- vim.keymap.set("v", "<space>x", ":lua<CR>")
--
-- -- Quick list navigation
-- vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
-- vim.keymap.set("n", "<M-h>", "<cmd>cclose<CR>")
-- vim.keymap.set("n", "<M-l>", "<cmd>copen<CR>")
--
-- -- Temporary keymaps until next neovim release
-- vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
-- vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
-- vim.keymap.set('n', 'grr', vim.lsp.buf.references)
-- vim.keymap.set('n', 'gri', vim.lsp.buf.implementation)
-- vim.keymap.set('n', 'g0', vim.lsp.buf.document_symbol)
--
-- vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)
--
