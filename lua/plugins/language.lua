return {
  -- python
  {
    "averms/black-nvim",
  },
  -- terraform
  {
    "hashivim/vim-terraform",
  },
  -- jinja
  {
    "HiPhish/jinja.vim",
  },
  -- LSP rename
  {
    "filipdutescu/renamer.nvim",
    -- https://github.com/filipdutescu/renamer.nvim/issues/132
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
