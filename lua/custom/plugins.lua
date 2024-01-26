local plugins = {
  {
    'theprimeagen/harpoon'
  },

  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
    opts =  {
      ensure_installed = {
        "gopls",
        "rust-analyzer",
        "typescript-language-server",
        "templ",
        "html-lsp",
        "prettier",
        "htmx-lsp",
        "tailwindcss"
      }
    }
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  {
    'neovim/nvim-lspconfig',
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

  {
    "aserowy/tmux.nvim",
    keys = require("custom.configs.external.tmux").keys,
    config = function()
      require("custom.configs.external.tmux").setup()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- fun dev
        "c",
        "zig",
        "rust",
        "go",
        "templ",
      },
    },
  },
  {
    'Exafunction/codeium.vim',
    lazy=false,
    config = function ()
      require "custom.configs.codeium"
    end
  },

  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  }
}


return plugins
