vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Delete default keymaps
vim.keymap.set("n", "J", "<Nop>")

-- Executing lua
-- vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
-- vim.keymap.set("n", "<space>x", ":.lua<CR>")
-- vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Quick list navigation
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<M-h>", "<cmd>cclose<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>copen<CR>")

-- Temporary keymaps until next neovim release
vim.keymap.set("n", "grn", vim.lsp.buf.rename)
vim.keymap.set("n", "gra", vim.lsp.buf.code_action)
vim.keymap.set("n", "grr", vim.lsp.buf.references)
vim.keymap.set("n", "gri", vim.lsp.buf.implementation)
vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol)

vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help)
