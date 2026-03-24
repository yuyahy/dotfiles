return {
  "FrenzyExists/aquarium-vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("aquarium")

    vim.api.nvim_set_hl(0, "Comment", { italic = true })
    vim.api.nvim_set_hl(0, "@comment", { italic = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2a2a3a" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#fab387", bold = true })
  end,
}
