return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      -- Will use Telescope if installed or a vim.ui.select picker otherwise
      { '<leader>wr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
      { '<leader>ww', '<cmd>SessionSave<CR>', desc = 'Save / [W]rite session' },
      { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
    },
    config = function()
      require('auto-session').setup {
        suppressed_dirs = { '~/', '~/Dev', '~/Downloads', '/' },
        -- log_level = 'debug',
      }

      vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
    end,
  },
}
