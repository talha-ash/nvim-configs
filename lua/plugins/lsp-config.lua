return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        --"elixirls",
        "eslint",
        "tailwindcss",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      --lspconfig.elixirls.setup({
      --  cmd = { "/home/x/elixir-ls-v0.29.3/language_server.sh" },
      --  -- required to make language server aware of other files
      --  root_markers = { "mix.exs", ".git" },
      --})
      --lspconfig.tailwindcss.setup({
      --  includeLanguages = {
      --    elixir = "html-eex",
      --    eelixir = "html-eex",
      --    heex = "html-eex",
      --  },
      --})
      lspconfig.eslint.setup({})
    end,
  },
}
