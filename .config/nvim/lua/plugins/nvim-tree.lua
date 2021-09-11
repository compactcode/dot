require("which-key").register({
  ["<leader>"] = {
    f = {
      name = "+file",
      o = { "<cmd>NvimTreeFindFile<cr>", "Browse path of the current file" },
    },
  },
})
