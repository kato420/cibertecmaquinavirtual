return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
  {
    "echasnovski/mini.surround",
    version = false, -- Usa la última versión
    lazy = false,
    config = function()
      require("mini.surround").setup()
    end,
  },
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    after = "nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "barrett-ruth/live-server.nvim",
    build = "yarn global add live-server", -- Asegúrate de tener `yarn` y `npm` instalados
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup {
        -- Configuraciones opcionales
        port = 5500,
        browser_command = "firefox", -- Cambia a tu navegador preferido
        quiet = false,
      }
    end,
  },
}
