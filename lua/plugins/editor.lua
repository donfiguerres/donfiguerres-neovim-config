return {
  {
    "Mofiqul/vscode.nvim",
    opts = {
      italic_comments = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
  {
    "utilyre/barbecue.nvim",
    --- TODO: doesn't work yet
    enabled = false,
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("barbecue").setup({
        attach_navic = false,
        create_autocmd = false,
        theme = "auto",
      })
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    -- TODO: doesn't work yet
    enabled = false,
  },
}
