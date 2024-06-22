local M = {}

M.treesitter = {
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

    -- c
    "c",

    -- markdown
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

		-- go
		"gopls",

		-- ruby
		"standardrb",

    -- elixir
    "elixir-ls"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
