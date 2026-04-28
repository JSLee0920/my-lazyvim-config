return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- Optional: lazy-load Oil to keep startup times fast
  cmd = "Oil",
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
  opts = {
    -- Oil will take over directory buffers (e.g., opening a folder directly in Neovim)
    default_file_explorer = true,

    -- Customize how the columns look
    columns = {
      "icon",
      -- "permissions",
      -- "size",
      -- "mtime",
    },

    -- Optional: Make it open in a floating window instead of taking up the whole buffer
    view_options = {
      show_hidden = true, -- Show dotfiles like .env or .gitignore
    },

    -- Keymaps specifically for when the Oil buffer is open
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-h>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = "actions.close",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["g."] = "actions.toggle_hidden",
      ["g\\"] = "actions.toggle_trash",
    },
  },
}
