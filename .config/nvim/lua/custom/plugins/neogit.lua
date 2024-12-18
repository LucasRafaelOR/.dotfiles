return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    'nvim-telescope/telescope.nvim', -- optional
  },
  config = true,
  keys = {
    { '<leader>gg', '<cmd>:Neogit<CR>', desc = 'Neo[G]it buffer' },
    { '<leader>gs', '<cmd>:Neogit kind=split<CR>', desc = 'Neogit buffer on [S]plit' },
    { '<leader>gc', '<cmd>:Neogit commit<CR>', desc = 'Neogit [C]ommit' },
  },
}
