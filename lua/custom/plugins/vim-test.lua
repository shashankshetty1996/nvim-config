return {
  "vim-test/vim-test",
  dependency = {
    "preservim/vimux",
  },
  vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', { noremap = true, silent = true, desc = 'Run test nearest' }),
  vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { noremap = true, silent = true, desc = 'Run test file' }),
  vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { noremap = true, silent = true, desc = 'Run test suite' }),
  vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { noremap = true, silent = true, desc = 'Run last test' }),
  vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>', { noremap = true, silent = true, desc = 'Visit test file' }),
  vim.cmd('let test#strategy = "vimux"'),
}
