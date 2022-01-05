vim.g["test#strategy"] = "neovim"

require("which-key").register({
  ["<leader>"] = {
    a = { "<cmd>TestSuite<cr>", "Run test suite" },
    r = { "<cmd>TestFile<cr>", "Run test for current file" },
  },
  ["!"] = { "<cmd>TestLast<cr>", "Re-run the last test" },
})
