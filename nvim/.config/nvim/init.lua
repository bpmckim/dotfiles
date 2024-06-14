vim.api.nvim_command('set expandtab')
vim.api.nvim_command('set shiftwidth=2')
vim.api.nvim_command('set tabstop=2')
vim.api.nvim_command('set number')
vim.api.nvim_command('set relativenumber')
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = {}
opts = {}

require("lazy").setup(plugins, opts)
