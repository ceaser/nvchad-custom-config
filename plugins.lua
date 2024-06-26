local plugins = {
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

        -- backend dev
        "sql",

        -- ruby
        "ruby",
        "scss",

        -- infrastructure
        "terraform",
        "yaml",
        "bash",

        -- elixir
        "elixir",
        "erlang",

        -- go
        "go",
        "gosum",
      },
    },
  },
  {
    "mfussenegger/nvim-dap";
    dependencies = {
      "nvim-neotest/nvim-nio",
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
      "suketa/nvim-dap-ruby",
      "theHamsta/nvim-dap-virtual-text"
    };
    config = function()
      require("dapui").setup()
      require("dap-go").setup()
      require("dap-ruby").setup()
      require("nvim-dap-virtual-text").setup()
      local dap, dapui = require("dap"), require("dapui")

      dap.set_log_level("TRACE")
      -- dapui configuration
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  }
}
return plugins
