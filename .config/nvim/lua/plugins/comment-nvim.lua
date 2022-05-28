require('Comment').setup({
  mappings = {
    basic = false,
    extra = false,
    extended = false,
  },
})

require("which-key").register({
  ["<leader>"] = {
    c = { "<cmd>lua require('Comment.api').toggle_current_linewise()<cr>", "Comment/uncomment the current line" },
  },
})
