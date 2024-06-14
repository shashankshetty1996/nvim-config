return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      session_lens = {
        -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
        buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
      -- Automatically adding session
      vim.keymap.set('n', '<leader>sl', require('auto-session.session-lens').search_session, {
        noremap = true,
        desc = '[L]ist session',
      }),

      -- Deleting session
      -- vim.keymap.set('n', '<leader>sr', ':SessionDelete', { noremap = true, slient = true, desc = '[R]emove session' }),

      -- Deleting session
      vim.api.nvim_set_keymap('n', '<leader>sd', ':SessionDelete<CR>', { noremap = true, silent = true, desc = '[D]elete' })
    }
  end,
}
