return {
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    config = function()
      require('typst-preview').setup {
        dependencies_bin = { ['tinymist'] = 'tinymist' }, -- Use tinymist from Mason
        open_cmd = 'ungoogled-chromium %s',
      }

      local wk = require 'which-key'
      wk.add { '<localleader>p', group = '[P]review', mode = 'n' }

      vim.keymap.set('n', '<localleader>pt', '<cmd>TypstPreview<CR>', { desc = '[P]review [T]ypst' })
    end,
  },
}
