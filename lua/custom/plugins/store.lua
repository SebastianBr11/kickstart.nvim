---@module 'lazy'
---@type LazySpec
return {
  'alex-popov-tech/store.nvim',
  dependencies = { 'OXY2DEV/markview.nvim' },
  opts = {},
  cmd = 'Store',
  keys = {
    {
      '<leader>sp',
      function() require('store').open() end,
      desc = '[S]earch [P]lugins',
    },
  },
}
