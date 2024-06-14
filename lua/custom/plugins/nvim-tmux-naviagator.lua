return {
  "christoomey/vim-tmux-navigator",
  vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true, desc = 'Move to pane on the left' }),
  vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true, desc = 'Move to pane below' }),
  vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true, desc = 'Move to pane above' }),
  vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true, desc = 'Move to pane on the right' }),
}
