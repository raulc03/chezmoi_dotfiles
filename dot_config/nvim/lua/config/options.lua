-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in a terminal
vim.g.have_nerd_font = true

-- Show relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Basics
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Decrease update time
vim.opt.updatetime = 250

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Enable mouse
vim.opt.mouse = "a"

-- Don't show mode
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Save undo history
vim.opt.undofile = true

-- Config how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Dsiplay certain whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines
vim.opt.scrolloff = 10

-- Show the 100th column
vim.opt.cc = "100"
