-- lua/plugins/undotree.lua
return {
  {
    "mbbill/undotree",
    keys = {
      -- This sets <leader>uu to toggle the UndoTree window
      { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Toggle UndoTree" },
    },
  },
}
