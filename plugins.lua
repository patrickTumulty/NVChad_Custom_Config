local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "pylint",
        "clangd",
        "clang-format",
        "rustfmt",
        "cmakelang",
        "cpplint",
        "cpptools",
        "cmakelint",
        "cmake-language-server",
        "dockerfile-language-server",
        "python-lsp-server",
        "bash-language-server"
      },
    },
  },
}
return plugins
