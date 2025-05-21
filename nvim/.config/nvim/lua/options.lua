-- Space as leader is agruably the best
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.opt.number = true -- line numbers is a must
vim.opt.mouse = 'a' -- using the mouse sometimes is nice
vim.opt.showmode = false -- don't need to show mode since status line handles this for us
vim.opt.clipboard = 'unnamedplus' -- make the buffer the same as systems
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true -- ignore case sensitivity while searching
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.hlsearch = true -- highlight searches

vim.opt.tabstop = 4 -- tab represents 4 spaces visually (?)
vim.opt.softtabstop = 4 -- tab represents 4 spaces in edit mode visually (?)
vim.opt.shiftwidth = 4 -- 4 spaces instead of tab for tab
vim.opt.expandtab = true

-- To make Alacritty Tmux and Neo vim play nicely with each other
vim.opt.termguicolors = true
