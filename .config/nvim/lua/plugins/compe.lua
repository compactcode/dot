vim.o.completeopt = "menuone,noselect"

require('compe').setup {
  enabled = true;
  autocomplete = true;
  preselect = 'enable';
  documentation = true;

  source = {
    path = true;
    buffer = true;
    nvim_lsp = true;
    vsnip = true;
  };
}

vim.cmd('highlight link CompeDocumentation Pmenu')
