local MY_HTTP_PROXY = vim.env["MY_HTTP_PROXY"]
for _, k in ipairs({ "http_proxy", "https_proxy" }) do
  vim.env[k] = MY_HTTP_PROXY
  vim.env[k:upper()] = MY_HTTP_PROXY
end

local colorscheme = "habamax"
if NOT_VSCODE then colorscheme = "tokyonight" end

return {
  config = { colorscheme = colorscheme },
  g = {
    markdown_fenced_languages = {
      "bash",
      "c",
      "json",
      "lua",
      "python",
      "rust",
      "sh",
    },
  },
  o = {
    clipboard = "",
    guifont = "Fira Code:h11",
  },
}
