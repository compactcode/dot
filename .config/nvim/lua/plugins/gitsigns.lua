require('gitsigns').setup()

require("which-key").register({
  ["<leader>"] = {
    g = {
      name = "+git",
      b = { "<cmd>Gitsigns blame_line<cr>", "Show blame for the current line" },
      p = { "<cmd>Gitsigns preview_hunk<cr>", "Show changes for this hunk" },
      r = { "<cmd>Gitsigns reset_hunk<cr>", "Discard this hunk" },
    },
  },
})
