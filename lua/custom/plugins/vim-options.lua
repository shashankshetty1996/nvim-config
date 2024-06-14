-- Navigate vim panes better
return {
  vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true, desc = 'Move to pane above' }),
  vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true, desc = 'Move to pane below' }),
  vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true, desc = 'Move to pane on the left' }),
  vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true, desc = 'Move to pane on the right' }),
}

-- Resize panes
-- vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true, desc = 'Increase pane height' });
-- vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true, desc = 'Decrease pane height' });
-- vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true, desc = 'Increase pane width' });
-- vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>', { noremap = true, silent = true, desc = 'Decrease pane width' });
