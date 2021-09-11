-- ************************************************************
--  Display
-- ************************************************************

-- Show line numbers
vim.opt.number = true

-- Disable line wrapping
vim.opt.wrap = false

-- Show dangling whitespace
vim.opt.listchars = { space = '_', tab = '>~', trail = '·' }

-- Disable code folding
vim.opt.foldenable = false

-- ************************************************************
--  Editing
-- ************************************************************

-- Use spaces intead of tabs
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Don't let vim manage backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Allow buffers to be backgrounded without saving
vim.opt.hidden = true

-- ************************************************************
-- Search
-- ************************************************************

-- Ignore case unless a capital letter is used
vim.opt.ignorecase = true
vim.opt.smartcase = true