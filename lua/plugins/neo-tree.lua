--- ~/.config/nvim/lua/plugins/neo-tree.lua

require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,

  window = {
    position = "left",
    width = 30,
  },

  filesystem = {
    window = {
      mappings = {
        ["<space>"] = "none",
      },
    },
  },

  default_component_configs = {
    indent = {
      with_expanders = true,
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "*",
    },
    -- 👇 Вот ключевая часть — текст вместо иконок Git
    git_status = {
      symbols = {
        added     = "+",
        deleted   = "-",
        modified  = "~",
        renamed   = "→",
        untracked = "?",
        ignored   = "◌",
        unstaged  = "✗",
        staged    = "✓",
        conflict  = "⚔",
      }
    }
  },
})

