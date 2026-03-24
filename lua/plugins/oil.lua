return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = {},
  cmd = "Oil",
  keys = {
    { "<leader>go", function() require("oil").open() end, desc = "Open Oil (current file dir)" },
    { "<leader>gO", function() require("oil").open(".") end, desc = "Open Oil (cwd)" },
  },
}
