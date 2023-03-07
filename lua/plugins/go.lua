return {
  {
    "ray-x/guihua.lua",
    build = "cd lua/fzy && make",
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
    },
    config = true,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },
  {
    "leoluz/nvim-dap-go",
    config = true,
  },
}
