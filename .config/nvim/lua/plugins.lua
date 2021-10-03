return require('packer').startup(function(use)
  use {
    "wbthomason/packer.nvim",
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("plugins.which-key")
    end
  }

  use {
    'shaunsingh/nord.nvim',
    config = function()
      require('plugins.nord')
    end
  }

  use {
    "neovim/nvim-lspconfig",
    requires = { 'folke/which-key.nvim' },
    config = function()
      require("plugins.lspconfig")
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    requires = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    config = function()
      require('plugins.treesitter')
    end
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('plugins.lualine')
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      { 'folke/which-key.nvim' },
      { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    config = function()
      require('plugins.nvim-tree')
    end
  }

  use {
    'hrsh7th/nvim-compe', after = { 'nord.nvim' },
    config = function()
      require('plugins.compe')
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'folke/which-key.nvim' },
      { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    config = function()
      require('plugins.telescope')
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'folke/which-key.nvim' },
    },
    config = function()
      require('plugins.gitsigns')
    end
  }

  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require('plugins.nvim-colorizer')
    end
  }

  use { "tpope/vim-repeat", }
  use { "tpope/vim-surround", }

  use {
    "vim-test/vim-test",
    config = function()
      require('plugins.vim-test')
    end
  }
end)
