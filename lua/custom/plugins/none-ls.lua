return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    -- 'nvim-lua/plenary.nvim',
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.prettierd,
        require("none-ls.diagnostics.eslint"),
        null_ls.builtins.completion.spell,
      },
    }

    vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = '[C]ode [F]ormatting' })
  end,
}
