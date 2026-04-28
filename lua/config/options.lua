-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- lua/config/options.lua
if vim.fn.has("win32") == 1 then
  -- Point to the diff.exe that comes with Git for Windows
  vim.opt.diffexpr = ""
  -- This assumes Git is in the standard location
  vim.g.undotree_DiffCommand = "C:\\Program Files\\Git\\usr\\bin\\diff.exe"
end

vim.opt.showtabline = 0
vim.opt.guicursor = "n-v-c-i:block"
vim.opt.smartindent = true
