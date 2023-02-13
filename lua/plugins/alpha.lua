return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    --
    opts.section.buttons.val = {
      opts.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      opts.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      opts.button("p", " " .. " Find project", ":Telescope projects <CR>"),
      opts.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      opts.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
      opts.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      opts.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      opts.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
      opts.button("q", " " .. " Quit", ":qa<CR>"),
    }
    for _, button in ipairs(opts.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
  end,
}
