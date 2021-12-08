require('Comment').setup({
    mappings = {
        basic = true,
        extra = false,
        extended = false,
    },
})

require("which-key").register({
  ["<leader>"] = {
    c = { "<cmd>lua require('Comment.api').toggle()<cr>", "Comment/uncomment the current line" },
  },
})
