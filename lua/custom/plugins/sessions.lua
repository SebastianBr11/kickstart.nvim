return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      -- Will use Telescope if installed or a vim.ui.select picker otherwise
      { '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session search' },
      { '<leader>ws', '<cmd>AutoSession save<CR>', desc = '[S]ave session' },
      { '<leader>wa', '<cmd>AutoSession toggle<CR>', desc = 'Toggle autosave' },
    },
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Dev', '~/Downloads', '/' },
      git_use_branch_name = true,
    },
    init = function() vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions' end,
  },
}
