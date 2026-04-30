return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Use sqlfluff for sql files
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.sql = { "sqlfluff" }

      -- Pass formatting arguments
      opts.formatters = opts.formatters or {}
      opts.formatters.sqlfluff = {
        -- Pass '-' to tell sqlfluff to read from stdin
        args = { "format", "-" },
      }
    end,
  },
}
