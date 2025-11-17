return {
  'stevearc/overseer.nvim',
  keys = {
    { '<leader>ot', '<cmd>OverseerToggle<CR>', desc = '[O]verseer [T]oggle' },
    { '<leader>or', '<cmd>OverseerRun<CR>', desc = '[O]verseer [R]un' },
  },
  opts = {
    task_list = { direction = 'right' },
  },
}
