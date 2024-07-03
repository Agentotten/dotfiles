return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require("configs.conform")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require("configs.lspconfig")
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "css-lsp",
        "json-lsp",
  			"lua-language-server",
        "stylua",
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "diff",
        "glsl",
        "json",
        "make",
        "markdown",
        "xml",
  		},
  	},
  },
}
