vim.g["test#strategy"] = "neovim"

require("which-key").register({
  ["<leader>"] = {
    r = { "<cmd>TestFile<cr>", "Run test" },
  },
  ["!"] = { "<cmd>TestLast<cr>", "Re-run the last test" },
})
