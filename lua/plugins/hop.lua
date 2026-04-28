return {
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup()

      -- Example keymaps
      vim.keymap.set("n", "<leader>jc", ":HopChar2<CR>", { desc = "Hop 2 Char" })
      vim.keymap.set("n", "<leader>jw", ":HopWord<CR>", { desc = "Hop Word" })
      vim.keymap.set("n", "<leader>jl", ":HopLine<CR>", { desc = "Hop Line" })
    end,
  },
}
