-- To enable this add require 'custom.configuration' to main init.lua
vim.keymap.set('', '<leader>pv', vim.cmd.Ex)

-- formatting
vim.keymap.set('v', '<leader>f', function()
  require('conform').format { async = true, lsp_fallback = true }
end)

-- disable autoformatting on save
require('conform').setup {
  opts = {
    format_on_save = false,
  },
}

vim.o.relativenumber = true

vim.opt.shiftwidth = 4;
vim.opt.softtabstop = 4;
vim.opt.wrap = false;

require 'custom.configuration.intelephense'
