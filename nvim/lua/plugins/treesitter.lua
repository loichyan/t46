return {
  {
    "nvim-treesitter",
    dependencies = { "windwp/nvim-ts-autotag", "andymass/vim-matchup" },
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "dart",
        "diff",
        "dockerfile",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "html",
        "java",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "luadoc",
        "luap",
        "make",
        "markdown",
        "markdown_inline",
        "nix",
        "python",
        "query",
        "regex",
        "rust",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      autotag = { enable = true },
      highlight = { additional_vim_regex_highlighting = false },
      matchup = { enable = true },
    },
  },
}
