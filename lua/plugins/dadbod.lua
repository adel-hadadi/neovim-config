return {
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_env_variable_url = "DATABASE_URL"
      vim.g.db_ui_env_variable_name = "DATABASE_NAME"

      vim.g.dbs = {
        { name = "dev", url = "postgres://homestead:secret@localhost:5432/entekhabeman" },
      }
    end,
  },
}
