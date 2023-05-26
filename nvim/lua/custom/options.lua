local keymap = vim.api.nvim_set_keymap
local opt = vim.opt

opt.foldmethod = "indent"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99
opt.swapfile = false
opt.fileencoding = "utf-8"
opt.termguicolors = true
