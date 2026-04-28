return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            -- Notice the wildcard (*) below! This grabs both clang.exe and clang++.exe
            "--query-driver=C:\\msys64\\mingw64\\bin\\clang*.exe",
          },
        },
        emmet_language_server = {
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
        },
      },
    },
  },
}
