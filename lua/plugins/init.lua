return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy",
        opts = function()
           local null_ls = require("null-ls")
            sources = {
                null_ls.builtins.formatting.clang_format,
            }
        end,
    },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope-fzy-native.nvim"
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "cpp"
  		},
  	},
  },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format"
            }
        }
    }
}
