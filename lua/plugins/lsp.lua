return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "sqlls",
        "stylua",
        "shellcheck",
        "shfmt",
        "bash-language-server",
        "buf-language-server",
        "checkmake",
        "css-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "eslint-lsp",
        "go-debug-adapter",
        "goimports",
        "golangci-lint",
        "gotests",
        "html-lsp",
        "htmlhint",
        "impl",
        "json-lsp",
        "json-to-struct",
        "jsonld-lsp",
        "marksman",
        "misspell",
        "php-cs-fixer",
        "prettier",
        "pyright",
        "typescript-language-server",
        "vetur-vls",
        "yaml-language-server",
        "yamlfmt",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      keys[#keys + 1] = { "gl", "<cmd>lua vim.diagnostic.open_float()<CR>" }
    end,
  },
}
