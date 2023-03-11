return {
  {
    "noice.nvim",
    opts = { presets = { inc_rename = true } },
  },
  {
    "lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
    },
  },
  {
    "indent-blankline.nvim",
    opts = {
      char = "▏",
      context_char = "▏",
      use_treesitter = true,
      show_current_context = true,
      show_first_indent_level = false,
      show_trailing_blankline_indent = false,
    },
  },
  { "mini.indentscope", enabled = false },
}
