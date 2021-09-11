require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",

  highlight = {
    enable = true,
    custom_captures = {
      ["symbol"] = "TSVariable",
    },
  },

  indent = {
    enable = false
  },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
      },
    },
  },
}
