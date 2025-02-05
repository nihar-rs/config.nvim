vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.background = "dark"
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.guicursor = ""
vim.opt.cursorline = true
--vim.opt.cursorcolumn = true

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>a', 'ggVG')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")
