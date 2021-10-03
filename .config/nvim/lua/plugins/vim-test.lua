vim.g["test#strategy"] = "neovim"

require("which-key").register({
  ["<leader>"] = {
    r = { "<cmd>TestFile<cr>", "Run test" },
  },
})
