-- ~/.config/nvim/init.lua

require('core.options')
require('core.keymaps')
require('plugins')  -- сначала загружаем плагины через Packer

-- А теперь — подключаем их конфигурации
-- Используем pcall, чтобы не падать при первом запуске (если плагин ещё не установлен)
pcall(require, 'plugins.colorscheme')
pcall(require, 'plugins.lsp')
pcall(require, 'plugins.cmp')
pcall(require, 'plugins.telescope')
pcall(require, 'plugins.treesitter')
pcall(require, 'plugins.lualine')
pcall(require, 'plugins.gitsigns')
pcall(require, 'plugins.comment')
pcall(require, 'plugins.indent-blankline')
pcall(require, 'plugins.autopairs')
pcall(require, 'plugins.neo-tree')
