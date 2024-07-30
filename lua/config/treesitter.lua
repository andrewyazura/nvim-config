require("nvim-treesitter.configs").setup({
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "<leader>dr",
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "<leader>gd",
        goto_next_usage = "<leader>gn",
        goto_previous_usage = "<leader>gp",
      },
    },
  },
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["fo"] = "@function.outer",
        ["fi"] = "@function.inner",
      }
    },
  },
  playground = {
    enable = true,
  },
})

require("treesitter-context").setup({
  enable = true,
})
