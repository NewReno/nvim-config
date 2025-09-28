-- lua/core/options.lua

local opt = vim.opt

-- Общие настройки
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'  -- для работы с системным буфером (требует +clipboard в nvim)
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath('data') .. '/undodir'

-- Отступы
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Поиск
opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

-- Интерфейс
opt.termguicolors = true
opt.signcolumn = 'yes'
opt.updatetime = 300

-- Создаём undodir, если не существует
local undodir = vim.fn.stdpath('data') .. '/undodir'
if not vim.loop.fs_stat(undodir) then
  vim.fn.mkdir(undodir, 'p')
end
