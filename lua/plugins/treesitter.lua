return { 
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",
  config = function()
    local treeConfig = require("nvim-treesitter.configs")
    treeConfig.setup({
    ensure_installed = { "json", "go","erlang", "css", "typescript","javascript","elixir", "heex", "html","c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "yaml", "json", "tsx", "comment" },
    highlight = {enable = true},
    indent = {enable = true},
    })
  end
}



