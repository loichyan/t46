-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    {
      --"loichyan/DeltaVim",
      name = "DeltaVim",
      dir = "~/dev/lua/DeltaVim",
      import = "deltavim.plugins",
    },
    { import = "plugins" },
    -- {
    --   name = "LazyVim",
    --   dir = "~/dev/lua/LazyVim",
    --   import = "lazyvim.plugins",
    -- },
    -- { "mason.nvim", enabled = false },
    -- { "mason-lspconfig.nvim", enabled = false },
    -- { "mini.indentscope", enabled = false },
  },
  defaults = { lazy = true, version = false },
  install = { missing = NOT_VSCODE, colorscheme = { COLORSCHEME } },
  checker = { enabled = NOT_VSCODE },
  performance = {
    rtp = {
      -- Disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = { border = "rounded" },
  change_detection = { enabled = false },
})
