return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
  },
  config = function()
    -- Set the neo tree to open on the right side
    vim.g.neo_tree_side = 'right'
    -- vim.g.neo_tree_width = '20%'

    -- Set the keymap to open neotree
    vim.keymap.set('n', '<leader>fe', ':Neotree filesystem reveal right<CR>', { desc = '[F]ind in [E]xplore', noremap = true })
  end,
}
