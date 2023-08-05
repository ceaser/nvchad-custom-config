local plugins = {
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
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
}
return plugins
