vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.clipboard = "unnamedplus"

if vim.fn.has("win32") == 1 then
  vim.o.shell = "pwsh -NoLogo"
end

vim.opt.title = true
vim.opt.titlestring = [[%t - %{fnamemodify(getcwd(), ':t')}]]
