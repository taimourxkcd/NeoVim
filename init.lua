local opt=vim.opt

opt.number= true
opt.relativenumber= true

vim.opt.termguicolors = false

opt.tabstop = 2

require('plugins')
require('p-mason')
require('p-lsp')
require('p-tree')
require('color')
