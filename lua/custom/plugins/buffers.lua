return {
  -- Close buffer
  vim.keymap.set('n', '<leader>bc', ':bd<CR>', { noremap = true, silent = true, desc = '[B]uffer [C]lose' }),
  -- Close all buffers
  vim.keymap.set('n', '<leader>ba', ':bufdo bd<CR>', { noremap = true, silent = true, desc = '[B]uffer [A]ll' }),
  -- Close all buffers except the current ones
  vim.keymap.set(
    'n',
    '<leader>be',
    ":bufdo if bufnr('%') != bufnr('#') | bd | endif<CR>",
    { noremap = true, silent = true, desc = '[B]uffer Close all [E]xcept current' }
  ),

  -- Buffer navigation
  -- Next, previous, first, last
  vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true, desc = '[B]uffer [N]ext' }),
  vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true, desc = '[B]uffer [P]revious' }),
  vim.keymap.set('n', '<leader>bf', ':bfirst<CR>', { noremap = true, silent = true, desc = '[B]uffer [F]irst' }),
  vim.keymap.set('n', '<leader>bl', ':blast<CR>', { noremap = true, silent = true, desc = '[B]uffer [L]ast' }),

  -- Kill all buffers except the current ones
  vim.keymap.set('n', '<leader>bd', ':bufdo bd<bar>e#<CR>',
    { noremap = true, silent = true, desc = '[B]uffer Kill [A]ll expect current' }),
}
