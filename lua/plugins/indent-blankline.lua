-- lua/plugins/indent-blankline.lua

require("ibl").setup({
  indent = {
    char = "┊",
    tab_char = "│",
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    highlight = { "Function", "Label" },
  },
  exclude = {
    filetypes = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "trouble",
      "lazy",
      "mason",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
    },
    buftypes = {
      "terminal",
    },
  },
})
