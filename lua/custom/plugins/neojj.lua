return {
  'NicholasZolton/neojj',
  version = '^1.0.0', -- recommended: track 1.x releases (see Versioning below)
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'esmuellert/codediff.nvim', -- optional
    'folke/snacks.nvim', -- optional
  },
  cmd = 'Neojj',
  keys = {
    { '<leader>js', '<cmd>Neojj<cr>', desc = 'Neo[J]J [S]how' },
  },
}
