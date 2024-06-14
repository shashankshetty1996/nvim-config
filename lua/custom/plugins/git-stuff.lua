return {
  {
    'tpope/vim-fugitive',
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,
      }

      -- Setting defination action
      vim.keymap.set('n', '<leader>cg', '', { desc = '[G]itsigns', noremap = true })

      vim.keymap.set('n', '<leader>cgp', ':Gitsigns preview_hunk<CR>',
        { desc = '[C]ode [G]it [P]review hunk', noremap = true })
      vim.keymap.set('n', '<leader>cgt', ':Gitsigns toggle_current_line_blame<CR>',
        { desc = '[C]ode [G]it [T]oggle current line blame', noremap = true })
    end,
  },
}
