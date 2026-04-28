-- lua/plugins/toggleterm.lua
return {
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = { "ToggleTerm", "TermExec" },
    keys = {
      {
        "<leader>Tf",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float")
        end,
        desc = "ToggleTerm (float root_dir)",
      },
      {
        "<leader>Th",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 15, LazyVim.root.get(), "horizontal")
        end,
        desc = "ToggleTerm (horizontal root_dir)",
      },
      {
        "<leader>Tv",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, vim.o.columns * 0.4, LazyVim.root.get(), "vertical")
        end,
        desc = "ToggleTerm (vertical root_dir)",
      },
      { "<leader>Tn", "<cmd>ToggleTermSetName<cr>", desc = "Set term name" },
      { "<leader>Ts", "<cmd>TermSelect<cr>", desc = "Select term" },
      {
        "<leader>Tt",
        function()
          require("toggleterm").toggle(1, 100, LazyVim.root.get(), "tab")
        end,
        desc = "ToggleTerm (tab root_dir)",
      },
    },
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]], -- Global toggle shortcut
      hide_numbers = true,
      shade_terminals = false,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "horizontal", -- Fixed the syntax error from your snippet
      close_on_exit = true,
      shell = "pwsh", -- Force PowerShell 7 for Windows stability
      float_opts = {
        border = "curved", -- Looks great with Rose Pine
        winblend = 3,
      },
      highlights = {
        NormalFloat = {
          link = "Normal", -- Forces the float to use your main background color
        },
        FloatBorder = {
          link = "FloatBorder",
        },
      },
    },
  },
}
