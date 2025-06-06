return {
  {
    "mfussenegger/nvim-dap",
    lazy = false, -- asegúrate de que se cargue
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
      "mfussenegger/nvim-dap", -- importante
    },
    config = function()
      require("flutter-tools").setup({
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
        flutter_log = {
          enable = true,
          open_cmd = nil,
        },
      })
    end,
  },
}
