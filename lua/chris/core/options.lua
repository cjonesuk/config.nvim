vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

if vim.fn.has("win32") then
  vim.o.shell = "pwsh -NoLogo"
end
