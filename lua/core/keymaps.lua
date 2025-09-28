-- lua/core/keymaps.lua

local map = vim.keymap.set

-- Neo-tree
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggle file explorer' })

-- Быстрые выходы
map('n', '<leader>q', ':qa<CR>', { desc = 'Quit all' })

-- Перезагрузка конфига
map('n', '<leader>rc', ':source ~/.config/nvim/init.lua<CR>', { desc = 'Reload config' })

-- Очистка поиска
map('n', '<leader>nh', ':nohlsearch<CR>', { desc = 'No highlight' })

-- Плагин-независимые маппинги
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('n', 'J', 'mzJ`z')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Лидер-клавиша (если хочешь изменить с \ на , — раскомментируй)
-- vim.g.mapleader = ','
-- vim.g.maplocalleader = ','
