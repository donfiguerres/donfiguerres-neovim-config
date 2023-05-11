-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- show file path in winbar
-- source: https://github.com/elijahmanor/youtube-lazyvim/blob/main/lua/config/options.lua
vim.opt.winbar = "%=%m %f"

vim.opt.colorcolumn = { "80", "120" }

vim.opt.spelllang = "en"
vim.opt.spell = true

vim.cmd([[
let g:clipboard = {
  \   'name': 'WslClipboard',
  \   'copy': {
  \      '+': 'clip.exe',
  \      '*': 'clip.exe',
  \    },
  \   'paste': {
  \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \   },
  \   'cache_enabled': 0,
  \ }
]])

vim.filetype.add({
  filename = {
    [".env"] = "config",
  },
  pattern = {
    ["req.*.txt"] = "config",
    ["gitconf.*"] = "gitconfig",
    [".*.terraform.rc"] = "hcl",
    [".*.tfstate.backup"] = "json",
    ["Jenkinsfile"] = "groovy",
  },
  extension = {
    hcl = "hcl",
    terraformrc = "hcl",
    tf = "terraform",
    tfvars = "terraform",
    tfstate = "json",
  },
})

-- Fix for gitgutter not working on some windows. Can't remember where I saw
-- this fix.
vim.g.gitgutter_async = 0
