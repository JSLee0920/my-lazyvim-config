return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      -- 1. This handles "Live Greet" (searching text inside files)
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        -- Exclude these patterns from the search
        "--glob",
        "!**/.git/*",
        "--glob",
        "!**/node_modules/*",
        "--glob",
        "!**/.next/*", -- Useful if you use Next.js
      },
      -- 2. This handles the general UI/File Browser ignore list
      file_ignore_patterns = {
        "node_modules/.*",
        "%.git/.*",
        "target/.*", -- If you do Rust
        "dist/.*",
      },
    })

    -- 3. This handles "Find Files" (searching for filenames)
    opts.pickers = opts.pickers or {}
    opts.pickers.find_files = {
      hidden = true,
      -- We keep this true so .env shows up,
      -- but 'file_ignore_patterns' above will filter out node_modules
      no_ignore = false,
    }
  end,
}
