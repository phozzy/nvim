return {
  {
    "mfussenegger/nvim-dap",
    config = true,
  },
  {
    "rcarriga/nvim-dap-ui",
    config = true,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = true,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    config = function()
      require("telescope").load_extension("dap")
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "HUAHUAI23/telescope-dapzzzz",
    config = function()
      require("telescope").load_extension("i23")
    end,
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },
}
