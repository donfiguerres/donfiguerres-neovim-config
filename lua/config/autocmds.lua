-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- disable spellcheck in the terminal
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  command = "setlocal nospell",
})
