vim.g.nvim_tree_show_icons = {
   files = 1,
   folders = 1,
   folder_arrows = 1,
   git = 0,
}

require("nvim-tree").setup()

require("which-key").register({
  ["<leader>"] = {
    b = { "<cmd>NvimTreeToggle<cr>", "Browse files" },
    f = {
      name = "+file",
      o = { "<cmd>NvimTreeFindFile<cr>", "Browse path of the current file" },
    },
  },
})
