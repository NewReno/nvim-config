-- lua/plugins/treesitter.lua

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua', 'python', 'javascript', 'typescript', 'rust', 'go', 'html', 'css', 'json', 'yaml'
  },
  highlight = { enable = true },
  indent = { enable = true },
  autopairs = { enable = true },
})
