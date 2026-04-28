return {
  -- 2. Force blink.cmp to release the Enter key when not auto-completing
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
      },
    },
  },

  -- 3. Install nvim-autopairs and add the specific HTML/React rule
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true, -- Use Treesitter to verify context
      })

      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      -- The exact rule to expand <div>|</div> on Enter
      npairs.add_rules({
        Rule(">", "<", { "html", "javascriptreact", "typescriptreact" })
          :with_pair(cond.before_text(">"))
          :replace_endpair(function()
            return "<"
          end),
        -- :append_cr(function()
        -- return "<cr>"
        -- end),
      })
    end,
  },
}
