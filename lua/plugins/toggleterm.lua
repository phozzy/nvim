return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return vim.o.lines * 0.3
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
  },
  keys = {
    {
      "<leader>th",
      "<cmd>ToggleTerm direction=horizontal<cr>",
      desc = "horizontal terminal",
    },
    {
      "<leader>tv",
      "<cmd>ToggleTerm direction=vertical<cr>",
      desc = "vertical terminal",
    },
  },
}
