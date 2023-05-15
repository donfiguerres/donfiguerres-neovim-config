return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      "nvim-dap-extra-conf",
      config = function()
        require("dap.ext.vscode").load_launchjs()
      end,
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
    },
    opts = {
      adapters = { "neotest-python" },
    },
  },
}
