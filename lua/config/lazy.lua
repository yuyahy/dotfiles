-- lazy.nvim ブートストラップ
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Leaderキーの設定
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- エディタ設定
vim.opt.number = true
vim.opt.relativenumber = true

-- lazy.nvim セットアップ
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  checker = { enabled = true },
})
